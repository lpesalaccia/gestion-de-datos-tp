
DELETE FROM dbo.curso_por_usuario;

----GENERAR 1100 REGISTROS EN curso_por_usuario

DECLARE @i INT = 1;
WHILE @i <= 1100
BEGIN

------IDS VALIDOS: 310 cursos existentes, ids entre 1 y 310


    DECLARE @id_curso INT =
        ((@i - 1) % 310) + 1;


--33 usuarios existentes, ids entre 1 y 33

    DECLARE @id_usuario INT =
        ((@i - 1) % 33) + 1;


-----PROGRESO: progreso entre 5% y 100%

    DECLARE @progreso DECIMAL(5,2) =
        CAST(
            5 + ((@i * 7) % 96)
            AS DECIMAL(5,2)
        );


-----XP COHERENTE: si 100% = 5000 XP

    DECLARE @xp_total INT =
        CAST((@progreso / 100.0) * 5000 AS INT);


-----FECHAS COHERENTES

    DECLARE @fecha_inicio DATETIME =
        DATEADD(
            DAY,
            @i % 120,
            '2026-01-01 08:00:00'
        );


----dias transcurridos desde inicio

    DECLARE @dias_progreso INT =
        (@i % 30) + 1;

---ultimo progreso SIEMPRE posterior al inicio

    DECLARE @fecha_ultimo DATETIME =
        DATEADD(
            DAY,
            @dias_progreso,
            @fecha_inicio
        );


---- fecha fin: solo algunos cursos terminados

    DECLARE @fecha_fin DATETIME = NULL;


    IF @progreso >= 100
    BEGIN
        SET @fecha_fin =
            DATEADD(
                DAY,
                2,
                @fecha_ultimo
            );
    END


--------------INSERT

    INSERT INTO dbo.curso_por_usuario
    (
        id_curso_por_usuario,
        id_curso,
        id_usuario,
        progreso_porcentaje,
        xp_total,
        fecha_inicio,
        fecha_ultimo_progreso,
        fecha_fin
    )
    VALUES
    (
        @i,
        @id_curso,
        @id_usuario,
        @progreso,
        @xp_total,
        @fecha_inicio,
        @fecha_ultimo,
        @fecha_fin
    );


    SET @i = @i + 1;


END;



SELECT name 
FROM sys.foreign_keys 
WHERE parent_object_id = OBJECT_ID('ejercicio_realizado')
AND referenced_object_id = OBJECT_ID('curso_por_usuario');




ALTER TABLE ejercicio_realizado 
DROP CONSTRAINT FK_ejercicio_curso; -- Cambia el nombre por el que encontraste


---El curso asociado al ejercicio no se 
--condice con el curso en el cual se realiza el ejercicio 
--(ver CURSO_POR_USUARIO, EJERCICIO y EJERCICIO_REALIZADO).

-- 1. Creamos tabla temporal para el mapeo
CREATE TABLE #MapeoIDs (
    id_viejo INT,
    id_nuevo INT IDENTITY(1,1)
);


-- 2. Insertamos todos los IDs actuales en orden
INSERT INTO #MapeoIDs (id_viejo)
SELECT id_curso_por_usuario 
FROM curso_por_usuario 
ORDER BY id_curso_por_usuario;


-- 3. Actualizamos la tabla de historial (ejercicio_realizado) 
-- para que apunte a los futuros nuevos IDs
UPDATE er
SET er.id_curso_por_usuario = m.id_nuevo
FROM ejercicio_realizado er
JOIN #MapeoIDs m ON er.id_curso_por_usuario = m.id_viejo;


-- 4. Actualizamos la tabla maestra (curso_por_usuario)
UPDATE cpu
SET cpu.id_curso_por_usuario = m.id_nuevo
FROM curso_por_usuario cpu
JOIN #MapeoIDs m ON cpu.id_curso_por_usuario = m.id_viejo;


-- 5. Limpiamos la tabla temporal
DROP TABLE #MapeoIDs;


-- 1. Volver a crear la Foreign Key
ALTER TABLE ejercicio_realizado
ADD CONSTRAINT fk_curso_por_usuario_ejericio_realizado -- Usa el nombre original o uno nuevo
FOREIGN KEY (id_curso_por_usuario) 
REFERENCES curso_por_usuario(id_curso_por_usuario);


/*El xp_total en curso_por_usuario debería ser la suma de los xp_ganado de todos 
los ejercicios realizados por ese usuario en ese curso. */

UPDATE curso_por_usuario
SET xp_total = (
    SELECT ISNULL(SUM(er.xp_ganado), 0)
    FROM ejercicio_realizado er
    WHERE er.id_curso_por_usuario = curso_por_usuario.id_curso_por_usuario
)
GO


/*la lógica es:
(ejercicios correctos realizados / total de ejercicios del curso) × 100
Donde "ejercicios correctos" son los que tienen xp_ganado > 0 (o correcto = 1).*/

UPDATE curso_por_usuario
SET progreso_porcentaje = (
    SELECT 
        CAST(
            CAST(COUNT(CASE WHEN er.correcto = 1 THEN 1 END) AS DECIMAL(10,2)) 
            / 25.0 * 100 
        AS DECIMAL(5,2))
    FROM ejercicio_realizado er
    WHERE er.id_curso_por_usuario = curso_por_usuario.id_curso_por_usuario
)
GO


UPDATE curso_por_usuario
SET progreso_porcentaje = 0.00
WHERE id_curso_por_usuario = 1
GO


UPDATE curso_por_usuario
SET fecha_ultimo_progreso = (
    SELECT MAX(er.fecha)
    FROM ejercicio_realizado er
    WHERE er.id_curso_por_usuario = curso_por_usuario.id_curso_por_usuario
)
WHERE EXISTS (
    SELECT 1 FROM ejercicio_realizado er
    WHERE er.id_curso_por_usuario = curso_por_usuario.id_curso_por_usuario
)
GO

UPDATE curso_por_usuario
SET fecha_fin = NULL
WHERE id_curso_por_usuario IN (1, 38, 125, 389, 476, 563, 737, 824, 911, 998)
GO

UPDATE curso_por_usuario
SET fecha_ultimo_progreso = (
    SELECT MAX(er.fecha)
    FROM ejercicio_realizado er
    WHERE er.id_curso_por_usuario = curso_por_usuario.id_curso_por_usuario
)
WHERE EXISTS (
    SELECT 1 FROM ejercicio_realizado er
    WHERE er.id_curso_por_usuario = curso_por_usuario.id_curso_por_usuario
)
GO
