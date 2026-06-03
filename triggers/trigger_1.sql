/*
Trigger 1 — Mantenimiento de cantidad de participantes por grupo de competencia

Las ligas de competencia son uno de los mecanismos de gamificación más importantes de Duolingo. Saber 
cuántos participantes tiene cada grupo es un dato que la app necesita mostrar en tiempo real para que los 
usuarios vean con quiénes están compitiendo. Este trigger mantiene ese contador actualizado automáticamente 
sin necesidad de recalcularlo con queries cada vez, lo que es fundamental para una experiencia de usuario 
fluida y en tiempo real. Es puramente engagement porque habla de competencia, gamificación y actividad dentro de la app.
Nombre de los objetos: tr_insert_cantidad_participantes y tr_delete_cantidad_participantes 
Tabla sobre la que se aplica: grupo_competencia_por_usuario
Evento disparador: INSERT y DELETE
Funcionalidad: Mantiene actualizado el campo denormalizado cantidad_participantes de la tabla grupo_competencia. 
Cuando se inserta un nuevo registro en grupo_competencia_por_usuario — es decir, cuando un usuario se une activamente 
a un grupo de competencia — el trigger incrementa en 1 el contador del grupo correspondiente. Cuando se elimina un registro 
físicamente, el trigger decrementa ese contador en 1. En los tres casos se valida que el contador no quede negativo, y si la 
actualización falla se hace ROLLBACK.

Objetivo de negocio: cantidad_participantes es un dato que Duolingo necesita consultar constantemente para mostrar el estado de
cada grupo de liga en tiempo real. Sin este trigger, cada vez que se quisiera saber cuántos participantes tiene un grupo habría 
que hacer un COUNT sobre grupo_competencia_por_usuario. Al mantenerlo denormalizado y actualizado automáticamente, esa consulta 
se reduce a leer un solo campo. El trigger garantiza que ese campo siempre refleje la realidad sin depender de que ninguna aplicación 
lo actualice manualmente.

*/


-- Trigger para INSERT:

CREATE TRIGGER tr_insert_cantidad_participantes
ON grupo_competencia_por_usuario
FOR INSERT
AS
BEGIN
    BEGIN TRY

        UPDATE grupo_competencia
        SET cantidad_participantes = cantidad_participantes + 1
        FROM grupo_competencia gc
            INNER JOIN inserted i
                ON gc.id_grupo_competencia = i.id_grupo_competencia
        WHERE
            i.fecha_baja IS NULL

    END TRY
    BEGIN CATCH

        ROLLBACK TRANSACTION
        RAISERROR('Error al actualizar cantidad_participantes en INSERT', 16, 1)

    END CATCH
END
GO

Trigger para DELETE:
CREATE TRIGGER tr_delete_cantidad_participantes
ON grupo_competencia_por_usuario
FOR DELETE
AS
BEGIN
    BEGIN TRY
        UPDATE grupo_competencia
        SET cantidad_participantes = cantidad_participantes - 1
        FROM grupo_competencia gc
            INNER JOIN deleted d
                ON gc.id_grupo_competencia = d.id_grupo_competencia
        WHERE
            d.fecha_baja IS NULL
            AND gc.cantidad_participantes > 0
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION
        RAISERROR('Error al actualizar cantidad_participantes en DELETE', 16, 1)
    END CATCH
END
GO
