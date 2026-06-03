
-- TIPO_PRODUCTO (8 tipos - Merchandising y productos de la plataforma)
INSERT INTO tipo_producto (id_tipo_producto, nombre, descripcion, fecha_alta, fecha_baja) VALUES
(1, 'Accesorios', 'Accesorios oficiales de Duolingo (lámparas, tazas, mochilas, etc.)', CAST('2026-04-15' AS DATETIME), NULL),
(2, 'Ropa', 'Prendas de vestir oficiales de Duolingo (camisetas, sudaderas, pantalones, gorras)', CAST('2026-04-15' AS DATETIME), NULL),
(3, 'Peluches', 'Peluches y muñecos de personajes de Duolingo', CAST('2026-04-15' AS DATETIME), NULL),
(4, 'Ofertas Especiales', 'Promociones y ofertas especiales limitadas', CAST('2026-04-15' AS DATETIME), NULL),
(5, 'Protector de Racha', 'Protección y booster de racha', CAST('2026-04-15' AS DATETIME), NULL),
(6, 'Energía', 'Vidas/Corazones para continuar jugando', CAST('2026-04-15' AS DATETIME), NULL),
(7, 'Tiempo Extra', 'Multiplicadores de experiencia y bonificadores de tiempo', CAST('2026-04-15' AS DATETIME), NULL),
(8, 'Gemas', 'Gemas y moneda premium para compras en app', CAST('2026-04-15' AS DATETIME), NULL);
GO