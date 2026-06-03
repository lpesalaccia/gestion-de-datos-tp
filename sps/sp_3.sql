/*
SP3 — Detección de usuarios en riesgo de abandono 

Este procedure identifica usuarios que dejaron de usar la app durante un período determinado. El abandono es el enemigo 
directo del engagement - un usuario inactivo es un usuario que no aprende, no genera XP, no participa en ligas y eventualmente 
cancela su suscripción. Este procedure le da al equipo de marketing la información necesaria para lanzar campañas de reactivación 
antes de que el usuario se vaya definitivamente. Es un procedure relacionado con el engagement.

Descripción:

Operatoria y resultado: Recibe como parámetro de entrada la cantidad de días sin actividad a partir de la cual un usuario se 
considera en riesgo. Internamente calcula, para cada usuario con actividad registrada, cuántos días transcurrieron desde su última 
actividad en la plataforma, tomando como referencia la fecha más reciente de ejercicio realizado. Devuelve nombre, apellido, email, 
récord de racha, días de inactividad y nivel de riesgo. También incluye a los usuarios sin actividad registrada.

Propósito y utilidad:  Le permite al equipo de marketing identificar usuarios que dejaron de utilizar la plataforma o que nunca 
registraron actividad, con el objetivo de diseñar campañas de reactivación. La clasificación por nivel de riesgo ayuda a priorizar 
intervenciones sobre usuarios que, pese a haber mostrado compromiso previamente mediante su récord de racha, llevan un período 
prolongado sin actividad.
*/

CREATE PROCEDURE sp_usuarios_en_riesgo
    @dias_sin_actividad INT
AS
BEGIN
    SELECT
        u.nombre,
        u.apellido,
        u.email,
        u.record_racha,
        ultima_actividad.dias_inactivo,
        CASE
            WHEN ultima_actividad.dias_inactivo IS NULL
                THEN 'Sin actividad registrada'
            WHEN ultima_actividad.dias_inactivo > 60
                AND u.record_racha >= 30
                THEN 'Riesgo Critico'
            WHEN ultima_actividad.dias_inactivo > 30
                AND u.record_racha >= 10
                THEN 'Riesgo Alto'
            WHEN ultima_actividad.dias_inactivo >= @dias_sin_actividad
                THEN 'Riesgo Medio'
            ELSE 'Observacion'
        END                             AS nivel_riesgo
    FROM usuario u
        LEFT JOIN (
            SELECT
                cpu.id_usuario,
                DATEDIFF(
                    DAY,
                    MAX(er.fecha),
                    GETDATE()
                )                       AS dias_inactivo
            FROM curso_por_usuario cpu
                INNER JOIN ejercicio_realizado er
                    ON cpu.id_curso_por_usuario = er.id_curso_por_usuario
            GROUP BY
                cpu.id_usuario
        ) AS ultima_actividad
            ON u.id_usuario = ultima_actividad.id_usuario
    WHERE
        u.fecha_baja IS NULL
        AND (
                ultima_actividad.dias_inactivo >= @dias_sin_actividad
             OR ultima_actividad.dias_inactivo IS NULL
            )
    ORDER BY
        ultima_actividad.dias_inactivo  DESC,
        u.record_racha                  DESC

    IF @@error != 0
    BEGIN
        RAISERROR('Error al ejecutar sp_usuarios_en_riesgo', 16, 1)
    END
END
GO
