/*

Trigger 2 — Actualización de XP total y fecha de último progreso en el curso del usuario

Cuando un usuario completa un ejercicio en Duolingo, ese progreso debe reflejarse inmediatamente en el curso que 
está realizando. Este trigger mantiene actualizados dos datos centrales del engagement: el XP total acumulado por el 
usuario en ese curso y la fecha de su último progreso registrado.
Nombre del objeto: tr_insert_actualizar_progreso_curso
Tabla sobre la que se aplica: ejercicio_realizado
Evento disparador: INSERT
Funcionalidad: Cuando se inserta un nuevo registro en ejercicio_realizado, el trigger actualiza la fila correspondiente de 
curso_por_usuario. Por un lado, suma el valor de xp_ganado al campo xp_total. Por otro lado, actualiza fecha_ultimo_progreso 
con la fecha del ejercicio realizado, siempre que esa fecha sea posterior a la que ya estaba registrada.
Objetivo de negocio: Duolingo necesita consultar de forma inmediata cuánto XP acumuló cada usuario en cada curso y cuándo fue 
la última vez que registró progreso. Mantener estos valores actualizados automáticamente evita recalcularlos cada vez a partir de 
todos los ejercicios realizados y permite que la plataforma muestre información actualizada sobre avance y actividad del usuario.
*/

CREATE TRIGGER tr_insert_actualizar_progreso_curso
ON ejercicio_realizado
FOR INSERT
AS
BEGIN
    BEGIN TRY
        UPDATE curso_por_usuario
        SET
            xp_total = xp_total + i.xp_ganado,
            fecha_ultimo_progreso =
                CASE
                    WHEN i.fecha > fecha_ultimo_progreso THEN i.fecha
                    ELSE fecha_ultimo_progreso
                END
        FROM curso_por_usuario cpu
            INNER JOIN inserted i
                ON cpu.id_curso_por_usuario = i.id_curso_por_usuario
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION
        RAISERROR('Error al actualizar xp_total y fecha_ultimo_progreso', 16, 1)
    END CATCH
END
GO
