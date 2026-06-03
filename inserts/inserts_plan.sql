-- PLAN (30 planes de suscripción)
INSERT INTO [plan] (id_plan, nombre, duracion_dias, descripcion, fecha_alta, fecha_baja) VALUES
(1, 'Super', 30, 'Individual sin anuncios', CAST('2026-04-15' AS DATETIME), NULL), --estaba en 0, lo cambié a 30 para que tenga sentido con la duración del plan
(2, 'Super Familia', 30, '5 personas mas en tu plan Super', CAST('2026-04-15' AS DATETIME), NULL),
(3, 'Max', 90, 'Accede a videollamadas en vivo con Lili', CAST('2026-04-15' AS DATETIME), NULL),
(4, 'Max Familia', 365, '5 personas mas en tu plan Max', CAST('2026-04-15' AS DATETIME), NULL);
GO

UPDATE [plan]
SET duracion_dias = 30
WHERE nombre = 'Super';
GO
