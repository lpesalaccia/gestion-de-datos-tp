/*
Trigger 4 — Cierre automático de suscripciones activas ante la baja lógica de un usuario

Cuando un usuario deja de estar activo en la plataforma, no resulta coherente que conserve suscripciones 
vigentes asociadas a su cuenta. Este trigger automatiza el cierre de esas suscripciones en el momento en 
que se registra la baja lógica del usuario, manteniendo consistencia entre el estado del usuario y el estado 
de sus contrataciones premium.


Nombre del objeto: tr_update_cerrar_suscripciones_usuario_baja


Tabla sobre la que se aplica: usuario
Evento disparador: UPDATE
Funcionalidad: Cuando se actualiza el campo fecha_baja de un usuario, el trigger compara los valores de inserted 
y deleted para actuar únicamente si el usuario pasa de estar activo a tener una baja lógica registrada, es decir, 
cuando fecha_baja cambia de NULL a un valor. En ese caso, busca las suscripciones de ese usuario que se encuentren 
activas en la fecha de baja y actualiza su fecha_fin con esa misma fecha, cerrándolas automáticamente. Si la actualización 
falla, se realiza ROLLBACK.
Objetivo de negocio: Duolingo necesita mantener coherencia entre la permanencia de un usuario en la plataforma y la vigencia 
de sus suscripciones. Si una cuenta es dada de baja, no debería conservar planes premium activos más allá de esa fecha. Este 
trigger evita inconsistencias operativas y financieras al cerrar automáticamente las suscripciones vigentes cuando se registra 
la baja lógica del usuario, sin depender de que una aplicación externa realice esa actualización manualmente.
*/

CREATE TRIGGER tr_update_cerrar_suscripciones_usuario_baja
ON usuario
FOR UPDATE
AS
BEGIN
    BEGIN TRY
        UPDATE suscripcion
        SET fecha_fin = i.fecha_baja
        FROM suscripcion s
            INNER JOIN inserted i
                ON s.id_usuario = i.id_usuario
            INNER JOIN deleted d
                ON i.id_usuario = d.id_usuario
        WHERE
            d.fecha_baja IS NULL
            AND i.fecha_baja IS NOT NULL
            AND s.fecha_fin > i.fecha_baja
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        RAISERROR('Error al cerrar suscripciones activas por baja del usuario', 16, 1);
    END CATCH
END
GO
