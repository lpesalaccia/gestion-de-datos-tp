/*
SP4 — Comparativa de usuarios con y sin suscripción activa

Este procedure pertenece a ambos pilares porque compara métricas de engagement — XP promedio, ejercicios realizados, 
progreso en cursos - entre usuarios con suscripción activa y usuarios sin ella. Desde el lado del engagement, mide si 
los usuarios premium están más comprometidos con la plataforma. Desde el lado de la monetización, responde si vale la pena 
invertir en convertir usuarios gratuitos, porque si los premium tienen métricas significativamente mejores, la conversión 
tiene un impacto directo en el negocio.

Descripción:

Operatoria y resultado: Recibe como parámetros de entrada una fecha de inicio y una fecha de fin. Compara a los usuarios que 
registraron ejercicios realizados dentro de ese período, dividiéndolos en dos grupos: aquellos que tuvieron una suscripción 
activa durante el período consultado y aquellos que no. Para cada grupo calcula métricas de engagement: cantidad de usuarios únicos, 
XP promedio ganado por ejercicio, total de ejercicios realizados y progreso promedio registrado en sus cursos. Usa UNION para presentar
ambos grupos en una tabla comparativa de dos filas.

Propósito y utilidad: Es uno de los reportes más valiosos a nivel estratégico porque responde directamente la pregunta que todo el 
negocio quiere saber: ¿los usuarios que pagan se comportan distinto de los que no pagan? Si la diferencia en engagement es grande, 
justifica invertir más en convertir usuarios gratuitos. Si es pequeña, puede indicar que el plan pago no está ofreciendo suficiente 
valor diferencial.

*/

CREATE PROCEDURE sp_comparativa_free_vs_premium
    @fecha_inicio DATE,
    @fecha_fin    DATE
AS
BEGIN
    -- Rama 1: usuarios CON suscripcion activa en el periodo
    SELECT
        'Premium'                               AS tipo_usuario,
        COUNT(DISTINCT u.id_usuario)            AS cantidad_usuarios,
        CAST(AVG(CAST(er.xp_ganado AS DECIMAL(10,2))) AS DECIMAL(10,2)) AS xp_promedio_por_ejercicio,
        COUNT(er.id_ejercicio_realizado)        AS total_ejercicios_realizados,
        CAST(AVG(cpu.progreso_porcentaje) AS DECIMAL(5,2)) AS progreso_promedio_pct
    FROM usuario u
        INNER JOIN suscripcion s
            ON  u.id_usuario        = s.id_usuario
            AND s.fecha_inicio      <= @fecha_fin
            AND (
                s.fecha_fin > @fecha_inicio
                OR s.fecha_fin IS NULL
            )
        INNER JOIN curso_por_usuario cpu
            ON u.id_usuario = cpu.id_usuario
        INNER JOIN ejercicio_realizado er
            ON cpu.id_curso_por_usuario = er.id_curso_por_usuario
    WHERE
        u.fecha_baja    IS NULL
        AND er.fecha    BETWEEN @fecha_inicio AND @fecha_fin

    UNION ALL 

    -- Rama 2: usuarios SIN suscripcion activa en el periodo
    SELECT
        'Free'                                  AS tipo_usuario,
        COUNT(DISTINCT u.id_usuario)            AS cantidad_usuarios,
        CAST(AVG(CAST(er.xp_ganado AS DECIMAL(10,2))) AS DECIMAL(10,2)) AS xp_promedio_por_ejercicio,
        COUNT(er.id_ejercicio_realizado)        AS total_ejercicios_realizados,
        CAST(AVG(cpu.progreso_porcentaje) AS DECIMAL(5,2)) AS progreso_promedio_pct
    FROM usuario u
        LEFT JOIN suscripcion s
            ON  u.id_usuario        = s.id_usuario
            AND s.fecha_inicio      <= @fecha_fin
            AND (
                s.fecha_fin > @fecha_inicio
                OR s.fecha_fin IS NULL
            )
        INNER JOIN curso_por_usuario cpu
            ON u.id_usuario = cpu.id_usuario
        INNER JOIN ejercicio_realizado er
            ON cpu.id_curso_por_usuario = er.id_curso_por_usuario
    WHERE
        u.fecha_baja        IS NULL
        AND s.id_usuario    IS NULL
        AND er.fecha        BETWEEN @fecha_inicio AND @fecha_fin

    -- UN SOLO ORDER BY AL FINAL DE TODO
    ORDER BY tipo_usuario DESC; 
    
    IF @@error != 0
    BEGIN
        RAISERROR('Error al ejecutar sp_comparativa_free_vs_premium', 16, 1)
    END
END
GO
