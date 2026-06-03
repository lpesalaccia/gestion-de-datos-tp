
-- Checks
-- Precio > 0
ALTER TABLE suscripcion
ADD CONSTRAINT chk_suscripcion_precio
CHECK (precio >= 0);
GO

ALTER TABLE variacion_precio_plan
ADD CONSTRAINT chk_variacion_precio_plan_precio
CHECK (precio > 0);
GO

ALTER TABLE variacion_precio_producto
ADD CONSTRAINT chk_variacion_precio_producto_precio
CHECK (precio > 0);
GO


-- Cantidad > 0 en factura_detalle
ALTER TABLE factura_detalle
ADD CONSTRAINT chk_factura_detalle_cantidad
CHECK (cantidad > 0);
GO


-- Duración del plan > 0
ALTER TABLE [plan]
ADD CONSTRAINT chk_plan_duracion
CHECK (duracion_dias > 0);
GO


-- Progreso entre 0 y 100
ALTER TABLE curso_por_usuario
ADD CONSTRAINT chk_progreso_porcentaje
CHECK (progreso_porcentaje BETWEEN 0 AND 100);
GO


-- Si hay suscripción → cantidad = 1
ALTER TABLE factura_detalle
ADD CONSTRAINT chk_factura_detalle_suscripcion_cantidad
CHECK (
    (id_suscripcion IS NOT NULL AND cantidad = 1)
    OR (id_suscripcion IS NULL)
);
GO

-- Confirmación de inserción
SELECT 'Inserción completada exitosamente' AS Resultado;
SELECT COUNT(*) AS Total_Paises FROM pais;
SELECT COUNT(*) AS Total_Materias FROM materia;
SELECT COUNT(*) AS Total_Usuarios FROM usuario;
SELECT COUNT(*) AS Total_Suscripciones FROM suscripcion;
SELECT COUNT(*) AS Total_Facturas FROM factura;
SELECT COUNT(*) AS Total_Ejercicios_Realizados FROM ejercicio_realizado;
SELECT COUNT(*) AS Total_Participaciones_Liga FROM grupo_competencia_por_usuario;
GO


ALTER TABLE usuario
ADD CONSTRAINT ck_usuario_telefono_formato
CHECK (telefono IS NULL OR telefono LIKE '+%');
GO

ALTER TABLE usuario
ADD CONSTRAINT ck_usuario_email_formato
CHECK (email LIKE '%_@_%._%');
GO


ALTER TABLE liga
ADD CONSTRAINT ck_liga_fechas
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GO

ALTER TABLE materia
ADD CONSTRAINT ck_materia_fechas
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GO

ALTER TABLE pais
ADD CONSTRAINT ck_pais_fechas
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GO

ALTER TABLE [plan]
ADD CONSTRAINT ck_plan_fechas
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GO

ALTER TABLE tipo_producto
ADD CONSTRAINT ck_tipo_producto_fechas
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GO

ALTER TABLE usuario
ADD CONSTRAINT ck_usuario_fechas
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GO

ALTER TABLE curso
ADD CONSTRAINT ck_curso_fechas
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GOvar

ALTER TABLE grupo_competencia
ADD CONSTRAINT ck_grupo_competencia_fechas_alta_baja
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GO

ALTER TABLE grupo_competencia_por_usuario
ADD CONSTRAINT ck_grupo_competencia_por_usuario_fechas
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GO

ALTER TABLE nivel
ADD CONSTRAINT ck_nivel_fechas
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GO

ALTER TABLE producto
ADD CONSTRAINT ck_producto_fechas
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GO

ALTER TABLE ejercicio
ADD CONSTRAINT ck_ejercicio_fechas
CHECK (fecha_baja IS NULL OR fecha_baja >= fecha_alta);
GO

ALTER TABLE variacion_precio_plan
ADD CONSTRAINT ck_variacion_precio_plan_fechas
CHECK (fecha_fin IS NULL OR fecha_fin >= fecha_inicio);
GO

ALTER TABLE grupo_competencia
ADD CONSTRAINT ck_grupo_competencia_fechas_inicio_fin
CHECK (fecha_fin >= fecha_inicio);
GO

ALTER TABLE suscripcion
ADD CONSTRAINT ck_suscripcion_fechas
CHECK (fecha_fin >= fecha_inicio);
GO

ALTER TABLE variacion_precio_producto
ADD CONSTRAINT ck_variacion_precio_producto_fechas
CHECK (fecha_fin IS NULL OR fecha_fin >= fecha_inicio);
GO

ALTER TABLE curso_por_usuario
ADD CONSTRAINT ck_curso_por_usuario_fechas_inicio_fin
CHECK (fecha_fin IS NULL OR fecha_fin >= fecha_inicio);
GO

ALTER TABLE producto
ADD CONSTRAINT chk_producto_precio
CHECK (precio >= 0);
GO

ALTER TABLE ejercicio
ADD CONSTRAINT ck_ejercicio_dificultad
CHECK (dificultad IN ('Fácil', 'Normal', 'Difícil', 'Muy Difícil'));
GO

ALTER TABLE factura_detalle
ADD CONSTRAINT ck_factura_detalle_arc
CHECK (
    (id_producto IS NOT NULL AND id_suscripcion IS NULL)
    OR
    (id_producto IS NULL AND id_suscripcion IS NOT NULL)
);
GO


-- correcciones tp3

DELETE FROM liga WHERE nombre NOT IN ('Bronze', 'Silver', 'Gold', 'Sapphire', 'Ruby', 'Emerald', 'Amethyst', 'Pearl', 'Obsidian', 'Diamond');
ALTER TABLE liga
WITH CHECK ADD CONSTRAINT ck_liga_nombres_permitidos
CHECK (nombre IN (
    'Bronze', 'Silver', 'Gold', 'Sapphire', 'Ruby', 
    'Emerald', 'Amethyst', 'Pearl', 'Obsidian', 'Diamond'
));


-- Precio > 0
UPDATE suscripcion 
SET precio = 1.00 
WHERE precio <= 0;


ALTER TABLE suscripcion
ADD CONSTRAINT chk_suscripcion_precio
CHECK (precio >= 0);
GO


-- Si el progreso es antes del inicio, lo igualamos al inicio
UPDATE curso_por_usuario 
SET fecha_ultimo_progreso = fecha_inicio 
WHERE fecha_ultimo_progreso < fecha_inicio;


-- Si el progreso es después del fin, lo igualamos al fin
UPDATE curso_por_usuario 
SET fecha_ultimo_progreso = fecha_fin 
WHERE fecha_ultimo_progreso > fecha_fin;






-- Borramos el existente
ALTER TABLE curso_por_usuario 
DROP CONSTRAINT ck_curso_por_usuario_consistencia_fechas;
GO


-- Creamos la versión completa
ALTER TABLE curso_por_usuario
ADD CONSTRAINT ck_curso_por_usuario_consistencia_fechas
CHECK (
    (fecha_fin IS NULL OR fecha_fin >= fecha_inicio) 
    AND 
    (fecha_ultimo_progreso IS NULL OR fecha_ultimo_progreso >= fecha_inicio)
    AND
    (fecha_ultimo_progreso IS NULL OR fecha_fin IS NULL OR fecha_ultimo_progreso <= fecha_fin)
);
GO
