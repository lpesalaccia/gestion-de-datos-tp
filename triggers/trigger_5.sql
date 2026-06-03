/*
Trigger 5 — Cerrar suscripción anterior al insertar una nueva

Este trigger garantiza que un usuario no tenga dos suscripciones activas al mismo tiempo. Cuando un usuario renueva o 
cambia de plan, la suscripción anterior se cierra automáticamente desde el momento en que empieza la nueva. 
Es monetización porque habla directamente de la integridad del historial de suscripciones — un dato crítico para la 
facturación, los reportes financieros y la correcta identificación de qué usuarios tienen acceso premium en cada momento. 
Sin este trigger, el sistema podría tener usuarios con dos suscripciones activas simultáneas, lo que generaría inconsistencias 
en todos los reportes financieros.
Nombre del objeto: tr_insert_cerrar_suscripcion_anterior
Tabla sobre la que se aplica: suscripcion
Evento disparador: INSERT
Funcionalidad: Cuando un usuario compra una nueva suscripción — es decir, cuando se inserta un registro en suscripcion — el 
trigger verifica si ese usuario ya tiene una suscripción activa que se superpone con la fecha de inicio de la nueva. Si existe 
una suscripción previa cuya fecha_fin es posterior a la fecha_inicio de la nueva, el trigger la cierra automáticamente actualizando 
su fecha_fin con la fecha_inicio de la nueva suscripción, para que no haya superposición. Si no existe ninguna suscripción que se 
superponga, simplemente deja que la inserción se confirme sin hacer nada adicional. La lógica está implementada para manejar 
correctamente múltiples inserciones en el mismo lote.
Objetivo de negocio: Un usuario no puede tener dos suscripciones activas al mismo tiempo. En la vida real, cuando un usuario 
renueva o cambia de plan, la suscripción anterior se cierra automáticamente desde el momento en que empieza la nueva. Esta lógica 
no puede implementarse con ningún constraint estándar porque requiere buscar y modificar otro registro de la misma tabla en el momento 
de la inserción. El trigger garantiza que el historial de suscripciones siempre sea consistente, sin solapamientos, independientemente 
de cómo se registre la nueva suscripción.

*/


CREATE TRIGGER tr_insert_cerrar_suscripcion_anterior
ON suscripcion
FOR INSERT
AS
BEGIN
    BEGIN TRY

        UPDATE suscripcion
        SET fecha_fin = cierres.fecha_inicio_cierre
        FROM suscripcion s
            INNER JOIN (
                SELECT
                    s2.id_suscripcion,
                    MIN(i.fecha_inicio) AS fecha_inicio_cierre
                FROM suscripcion s2
                    INNER JOIN inserted i
                        ON s2.id_usuario = i.id_usuario
                        AND s2.fecha_inicio <= i.fecha_inicio
                        AND s2.fecha_fin > i.fecha_inicio
                        AND s2.id_suscripcion <> i.id_suscripcion
                GROUP BY
                    s2.id_suscripcion
            ) AS cierres
                ON s.id_suscripcion = cierres.id_suscripcion

    END TRY
    BEGIN CATCH

        ROLLBACK TRANSACTION
        RAISERROR('Error al cerrar la suscripcion anterior', 16, 1)

    END CATCH
END
GO
