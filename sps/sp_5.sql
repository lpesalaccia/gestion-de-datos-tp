/*
SP5 — Rendimiento de ligas de competencia por período

Las ligas de competencia son uno de los principales mecanismos de gamificación de Duolingo, ya que incentivan a los 
usuarios a mantenerse activos, acumular XP y competir con otros participantes. Este procedure permite analizar qué ligas 
concentraron mayor nivel de participación y actividad dentro de un período determinado. Se vincula con el pilar de engagement, 
porque brinda información para evaluar qué formatos de competencia generan más interacción dentro de la plataforma.

Descripción:

Operatoria y resultado: Recibe como parámetros de entrada una fecha de inicio y una fecha de fin. A partir de ese período, 
identifica los grupos de competencia desarrollados dentro del rango indicado y los relaciona con la liga a la que pertenecen 
y con los usuarios que participaron en cada grupo. Por cada liga devuelve:
el nombre de la liga,
la cantidad de grupos de competencia realizados,
la cantidad de usuarios participantes,
el XP total acumulado por los participantes,
y el XP promedio acumulado por participante.
Los resultados se ordenan de mayor a menor según el XP total acumulado.
Propósito y utilidad: Le permite al equipo de producto de Duolingo analizar qué ligas generan mayor nivel de actividad y 
competencia entre los usuarios. Esto puede servir para evaluar si ciertas ligas incentivan más el uso de la plataforma, si 
conviene reforzar determinadas dinámicas de gamificación o si existen formatos de competencia con menor participación que 
podrían revisarse. Al incorporar fechas de inicio y fin, el reporte puede utilizarse de forma periódica para comparar distintos 
momentos del año o medir el efecto de cambios en el sistema de ligas.
*/

CREATE PROCEDURE sp_rendimiento_ligas_por_periodo
    @fecha_inicio DATE,
    @fecha_fin DATE
AS
BEGIN
    SELECT
        l.nombre AS liga,
        COUNT(DISTINCT gc.id_grupo_competencia) AS cantidad_grupos_competencia,
        COUNT(DISTINCT gcpu.id_usuario) AS cantidad_usuarios_participantes,
        SUM(gcpu.xp_acumulado_grupo) AS xp_total_acumulado,
        AVG(gcpu.xp_acumulado_grupo) AS xp_promedio_por_participante
    FROM liga l
    INNER JOIN grupo_competencia gc
        ON l.id_liga = gc.id_liga
    INNER JOIN grupo_competencia_por_usuario gcpu
        ON gc.id_grupo_competencia = gcpu.id_grupo_competencia
    WHERE
        gc.fecha_inicio >= @fecha_inicio
        AND gc.fecha_fin <= @fecha_fin
    GROUP BY
        l.nombre
    ORDER BY
        xp_total_acumulado DESC

    IF @@error != 0
    BEGIN
        RAISERROR('Error al ejecutar sp_rendimiento_ligas_por_periodo', 16, 1)
    END
END
GO
