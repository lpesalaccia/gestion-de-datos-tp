/*
SP2 — Usuarios activos por curso
Este procedure mide la actividad real de los usuarios dentro de la plataforma: cuántos usuarios distintos hicieron 
ejercicios en cada curso durante un período, cuánto XP generaron y cuántos ejercicios completaron. No habla de dinero 
ni de suscripciones, habla de uso activo de la app. Es una herramienta para el equipo de producto que evalúa qué cursos 
están generando más actividad y compromiso. Se relaciona con el pilar de engagement.

Descripción:

Operatoria y resultado: Recibe como parámetros de entrada una fecha de inicio y una fecha de fin. Busca todos los 
ejercicios realizados dentro de ese período y los cruza con los cursos e idiomas correspondientes mediante INNER JOINs. 
Por cada curso devuelve: el nombre del curso, el idioma, la cantidad de usuarios únicos que tuvieron actividad en ese período 
(usando DISTINCT para no contar el mismo usuario dos veces si hizo múltiples ejercicios), el XP total generado por todos los usuarios 
en ese curso, y la cantidad total de ejercicios realizados. El resultado se ordena de mayor a menor por cantidad de usuarios activos.

Propósito y utilidad: Le permite al equipo de producto y contenido identificar qué cursos están generando más engagement en un período 
determinado. Es útil tanto para decisiones operativas — como reforzar el soporte de los cursos más activos — como para decisiones 
estratégicas, como detectar qué idiomas están creciendo y cuáles están perdiendo tracción. También sirve para medir el impacto de 
campañas o lanzamientos de contenido nuevo comparando períodos antes y después.
*/

CREATE PROCEDURE sp_usuarios_activos_por_curso
    @fecha_inicio DATE,
    @fecha_fin    DATE
AS
BEGIN

    SELECT
        c.nombre                            AS curso,
        m.nombre                            AS idioma,
        COUNT(DISTINCT cpu.id_usuario)      AS cantidad_usuarios_activos,
        SUM(er.xp_ganado)                   AS xp_total_generado,
        COUNT(er.id_ejercicio_realizado)    AS ejercicios_realizados
    FROM ejercicio_realizado er
        INNER JOIN curso_por_usuario cpu
            ON er.id_curso_por_usuario = cpu.id_curso_por_usuario
        INNER JOIN curso c
            ON cpu.id_curso = c.id_curso
        INNER JOIN materia m
            ON c.id_materia = m.id_materia
    WHERE
        er.fecha BETWEEN @fecha_inicio AND @fecha_fin
    GROUP BY
        c.nombre,
        m.nombre
    ORDER BY
        cantidad_usuarios_activos DESC

    IF @@error != 0
    BEGIN
        RAISERROR('Error al ejecutar sp_usuarios_activos_por_curso', 16, 1)
    END

END
GO
