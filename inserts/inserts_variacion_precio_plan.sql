INSERT INTO variacion_precio_plan (id_variacion_precio_plan, id_plan, precio, fecha_inicio, fecha_fin) VALUES
(1, 1, 0.00, CAST('2026-01-01' AS DATETIME), NULL),
(2, 2, 9.99, CAST('2026-01-01' AS DATETIME), NULL),
(3, 3, 24.99, CAST('2026-01-01' AS DATETIME), NULL),
(4, 4, 99.99, CAST('2026-01-01' AS DATETIME), NULL),
(5, 5, 14.99, CAST('2026-01-01' AS DATETIME), NULL),
(6, 6, 39.99, CAST('2026-01-01' AS DATETIME), NULL),
(7, 7, 149.99, CAST('2026-01-01' AS DATETIME), NULL),
(8, 8, 19.99, CAST('2026-01-01' AS DATETIME), NULL),
(9, 9, 49.99, CAST('2026-01-01' AS DATETIME), NULL),
(10, 10, 199.99, CAST('2026-01-01' AS DATETIME), NULL),
(11, 11, 49.99, CAST('2026-01-01' AS DATETIME), NULL),
(12, 12, 149.99, CAST('2026-01-01' AS DATETIME), NULL),
(13, 13, 7.99, CAST('2026-01-01' AS DATETIME), NULL),
(14, 14, 79.99, CAST('2026-01-01' AS DATETIME), NULL),
(15, 15, 59.99, CAST('2026-02-01' AS DATETIME), NULL),
(16, 16, 499.99, CAST('2026-02-01' AS DATETIME), NULL),
(17, 17, 4.99, CAST('2026-02-01' AS DATETIME), CAST('2026-02-08' AS DATETIME)),
(18, 18, 9.99, CAST('2026-02-08' AS DATETIME), NULL),
(19, 19, 44.99, CAST('2026-03-01' AS DATETIME), NULL),
(20, 20, 119.99, CAST('2026-03-01' AS DATETIME), NULL),
(21, 21, 179.99, CAST('2026-03-01' AS DATETIME), NULL),
(22, 22, 14.99, CAST('2026-04-01' AS DATETIME), NULL),
(23, 23, 39.99, CAST('2026-04-01' AS DATETIME), NULL),
(24, 24, 54.99, CAST('2026-04-01' AS DATETIME), NULL),
(25, 25, 169.99, CAST('2026-04-01' AS DATETIME), NULL),
(26, 26, 19.99, CAST('2026-04-01' AS DATETIME), NULL),
(27, 27, 59.99, CAST('2026-04-01' AS DATETIME), NULL),
(28, 28, 199.99, CAST('2026-04-01' AS DATETIME), NULL),
(29, 29, 64.99, CAST('2026-04-05' AS DATETIME), NULL),
(30, 30, 799.99, CAST('2026-01-01' AS DATETIME), NULL);
GO

---------------------------------------------------
-- VARIACION_PRECIO_PLAN
---------------------------------------------------


UPDATE variacion_precio_plan
SET fecha_fin = CAST('2026-02-01' AS DATETIME)
WHERE id_variacion_precio_plan IN (1, 7, 13, 19, 25);


UPDATE variacion_precio_plan
SET fecha_fin = CAST('2026-03-01' AS DATETIME)
WHERE id_variacion_precio_plan IN (2, 8, 14, 20, 26);


UPDATE variacion_precio_plan
SET fecha_fin = CAST('2026-04-01' AS DATETIME)
WHERE id_variacion_precio_plan IN (3, 9, 15, 21, 27);


UPDATE variacion_precio_plan
SET fecha_fin = CAST('2026-05-01' AS DATETIME)
WHERE id_variacion_precio_plan IN (4, 10, 16, 22, 28);


UPDATE variacion_precio_plan
SET fecha_fin = CAST('2026-06-01' AS DATETIME)
WHERE id_variacion_precio_plan IN (5, 11, 17, 23, 29);

DELETE FROM variacion_precio_plan
WHERE id_variacion_precio_plan IN (25, 26, 27, 28, 29, 30)
GO
