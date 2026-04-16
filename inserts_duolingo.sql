-- ===================================
-- INSERCIÓN DE DATOS - DUOLINGO
-- Base de datos: Gestion de Datos
-- Fecha: 2026-04-15
-- ===================================

-- ===================================
-- TABLAS MAESTRAS (30+ registros)
-- ===================================

-- PAIS (150 países)
INSERT INTO pais (id_pais, nombre, fecha_alta, fecha_baja) VALUES
(1, 'Argentina', CAST('2026-04-15' AS DATETIME), NULL),
(2, 'Brasil', CAST('2026-04-15' AS DATETIME), NULL),
(3, 'Chile', CAST('2026-04-15' AS DATETIME), NULL),
(4, 'Colombia', CAST('2026-04-15' AS DATETIME), NULL),
(5, 'Ecuador', CAST('2026-04-15' AS DATETIME), NULL),
(6, 'Perú', CAST('2026-04-15' AS DATETIME), NULL),
(7, 'Venezuela', CAST('2026-04-15' AS DATETIME), NULL),
(8, 'Paraguay', CAST('2026-04-15' AS DATETIME), NULL),
(9, 'Bolivia', CAST('2026-04-15' AS DATETIME), NULL),
(10, 'Uruguay', CAST('2026-04-15' AS DATETIME), NULL),
(11, 'España', CAST('2026-04-15' AS DATETIME), NULL),
(12, 'Portugal', CAST('2026-04-15' AS DATETIME), NULL),
(13, 'Francia', CAST('2026-04-15' AS DATETIME), NULL),
(14, 'Italia', CAST('2026-04-15' AS DATETIME), NULL),
(15, 'Alemania', CAST('2026-04-15' AS DATETIME), NULL),
(16, 'Reino Unido', CAST('2026-04-15' AS DATETIME), NULL),
(17, 'Irlanda', CAST('2026-04-15' AS DATETIME), NULL),
(18, 'Suecia', CAST('2026-04-15' AS DATETIME), NULL),
(19, 'Noruega', CAST('2026-04-15' AS DATETIME), NULL),
(20, 'Dinamarca', CAST('2026-04-15' AS DATETIME), NULL),
(21, 'Holanda', CAST('2026-04-15' AS DATETIME), NULL),
(22, 'Bélgica', CAST('2026-04-15' AS DATETIME), NULL),
(23, 'Suiza', CAST('2026-04-15' AS DATETIME), NULL),
(24, 'Austria', CAST('2026-04-15' AS DATETIME), NULL),
(25, 'Japón', CAST('2026-04-15' AS DATETIME), NULL),
(26, 'China', CAST('2026-04-15' AS DATETIME), NULL),
(27, 'Corea del Sur', CAST('2026-04-15' AS DATETIME), NULL),
(28, 'Tailandia', CAST('2026-04-15' AS DATETIME), NULL),
(29, 'Vietnam', CAST('2026-04-15' AS DATETIME), NULL),
(30, 'India', CAST('2026-04-15' AS DATETIME), NULL),
(31, 'Canadá', CAST('2026-04-15' AS DATETIME), NULL),
(32, 'Estados Unidos', CAST('2026-04-15' AS DATETIME), NULL),
(33, 'México', CAST('2026-04-15' AS DATETIME), NULL),
(34, 'Costa Rica', CAST('2026-04-15' AS DATETIME), NULL),
(35, 'Panamá', CAST('2026-04-15' AS DATETIME), NULL),
(36, 'Bolivia', CAST('2026-04-15' AS DATETIME), NULL),
(37, 'Guatemala', CAST('2026-04-15' AS DATETIME), NULL),
(38, 'Honduras', CAST('2026-04-15' AS DATETIME), NULL),
(39, 'El Salvador', CAST('2026-04-15' AS DATETIME), NULL),
(40, 'Nicaragua', CAST('2026-04-15' AS DATETIME), NULL),
(41, 'Belice', CAST('2026-04-15' AS DATETIME), NULL),
(42, 'Republica Dominicana', CAST('2026-04-15' AS DATETIME), NULL),
(43, 'Cuba', CAST('2026-04-15' AS DATETIME), NULL),
(44, 'Jamaica', CAST('2026-04-15' AS DATETIME), NULL),
(45, 'Puerto Rico', CAST('2026-04-15' AS DATETIME), NULL),
(46, 'Grecia', CAST('2026-04-15' AS DATETIME), NULL),
(47, 'Polonia', CAST('2026-04-15' AS DATETIME), NULL),
(48, 'República Checa', CAST('2026-04-15' AS DATETIME), NULL),
(49, 'Hungría', CAST('2026-04-15' AS DATETIME), NULL),
(50, 'Rumania', CAST('2026-04-15' AS DATETIME), NULL),
(51, 'Bulgaria', CAST('2026-04-15' AS DATETIME), NULL),
(52, 'Croacia', CAST('2026-04-15' AS DATETIME), NULL),
(53, 'Eslovenia', CAST('2026-04-15' AS DATETIME), NULL),
(54, 'Eslovaquia', CAST('2026-04-15' AS DATETIME), NULL),
(55, 'Serbia', CAST('2026-04-15' AS DATETIME), NULL),
(56, 'Bosnia y Herzegovina', CAST('2026-04-15' AS DATETIME), NULL),
(57, 'Montenegro', CAST('2026-04-15' AS DATETIME), NULL),
(58, 'Macedonia del Norte', CAST('2026-04-15' AS DATETIME), NULL),
(59, 'Albania', CAST('2026-04-15' AS DATETIME), NULL),
(60, 'Moldavia', CAST('2026-04-15' AS DATETIME), NULL),
(61, 'Ucrania', CAST('2026-04-15' AS DATETIME), NULL),
(62, 'Bielorrusia', CAST('2026-04-15' AS DATETIME), NULL),
(63, 'Rusia', CAST('2026-04-15' AS DATETIME), NULL),
(64, 'Georgia', CAST('2026-04-15' AS DATETIME), NULL),
(65, 'Armenia', CAST('2026-04-15' AS DATETIME), NULL),
(66, 'Azerbaiyán', CAST('2026-04-15' AS DATETIME), NULL),
(67, 'Kazajistán', CAST('2026-04-15' AS DATETIME), NULL),
(68, 'Uzbekistán', CAST('2026-04-15' AS DATETIME), NULL),
(69, 'Turkmenistán', CAST('2026-04-15' AS DATETIME), NULL),
(70, 'Kirgistán', CAST('2026-04-15' AS DATETIME), NULL),
(71, 'Tayikistán', CAST('2026-04-15' AS DATETIME), NULL),
(72, 'Afganistán', CAST('2026-04-15' AS DATETIME), NULL),
(73, 'Pakistán', CAST('2026-04-15' AS DATETIME), NULL),
(74, 'Bangladesh', CAST('2026-04-15' AS DATETIME), NULL),
(75, 'Nepal', CAST('2026-04-15' AS DATETIME), NULL),
(76, 'Bután', CAST('2026-04-15' AS DATETIME), NULL),
(77, 'Sri Lanka', CAST('2026-04-15' AS DATETIME), NULL),
(78, 'Maldivas', CAST('2026-04-15' AS DATETIME), NULL),
(79, 'Myanmar', CAST('2026-04-15' AS DATETIME), NULL),
(80, 'Laos', CAST('2026-04-15' AS DATETIME), NULL),
(81, 'Camboya', CAST('2026-04-15' AS DATETIME), NULL),
(82, 'Malasia', CAST('2026-04-15' AS DATETIME), NULL),
(83, 'Singapur', CAST('2026-04-15' AS DATETIME), NULL),
(84, 'Indonesia', CAST('2026-04-15' AS DATETIME), NULL),
(85, 'Filipinas', CAST('2026-04-15' AS DATETIME), NULL),
(86, 'Brunéi', CAST('2026-04-15' AS DATETIME), NULL),
(87, 'Timor Oriental', CAST('2026-04-15' AS DATETIME), NULL),
(88, 'Hong Kong', CAST('2026-04-15' AS DATETIME), NULL),
(89, 'Macao', CAST('2026-04-15' AS DATETIME), NULL),
(90, 'Mongolia', CAST('2026-04-15' AS DATETIME), NULL),
(91, 'Taiwán', CAST('2026-04-15' AS DATETIME), NULL),
(92, 'Tailandia', CAST('2026-04-15' AS DATETIME), NULL),
(93, 'Camboya', CAST('2026-04-15' AS DATETIME), NULL),
(94, 'Siria', CAST('2026-04-15' AS DATETIME), NULL),
(95, 'Líbano', CAST('2026-04-15' AS DATETIME), NULL),
(96, 'Palestina', CAST('2026-04-15' AS DATETIME), NULL),
(97, 'Israel', CAST('2026-04-15' AS DATETIME), NULL),
(98, 'Jordania', CAST('2026-04-15' AS DATETIME), NULL),
(99, 'Iraq', CAST('2026-04-15' AS DATETIME), NULL),
(100, 'Irán', CAST('2026-04-15' AS DATETIME), NULL),
(101, 'Arabia Saudita', CAST('2026-04-15' AS DATETIME), NULL),
(102, 'Yemen', CAST('2026-04-15' AS DATETIME), NULL),
(103, 'Omán', CAST('2026-04-15' AS DATETIME), NULL),
(104, 'Emiratos Árabes Unidos', CAST('2026-04-15' AS DATETIME), NULL),
(105, 'Qatar', CAST('2026-04-15' AS DATETIME), NULL),
(106, 'Bahréin', CAST('2026-04-15' AS DATETIME), NULL),
(107, 'Kuwait', CAST('2026-04-15' AS DATETIME), NULL),
(108, 'Turquía', CAST('2026-04-15' AS DATETIME), NULL),
(109, 'Chipre', CAST('2026-04-15' AS DATETIME), NULL),
(110, 'Egipto', CAST('2026-04-15' AS DATETIME), NULL),
(111, 'Libia', CAST('2026-04-15' AS DATETIME), NULL),
(112, 'Túnez', CAST('2026-04-15' AS DATETIME), NULL),
(113, 'Argelia', CAST('2026-04-15' AS DATETIME), NULL),
(114, 'Marruecos', CAST('2026-04-15' AS DATETIME), NULL),
(115, 'Mauritania', CAST('2026-04-15' AS DATETIME), NULL),
(116, 'Senegal', CAST('2026-04-15' AS DATETIME), NULL),
(117, 'Gambia', CAST('2026-04-15' AS DATETIME), NULL),
(118, 'Guinea-Bisáu', CAST('2026-04-15' AS DATETIME), NULL),
(119, 'Guinea', CAST('2026-04-15' AS DATETIME), NULL),
(120, 'Sierra Leona', CAST('2026-04-15' AS DATETIME), NULL),
(121, 'Liberia', CAST('2026-04-15' AS DATETIME), NULL),
(122, 'Mali', CAST('2026-04-15' AS DATETIME), NULL),
(123, 'Burkina Faso', CAST('2026-04-15' AS DATETIME), NULL),
(124, 'Costa de Marfil', CAST('2026-04-15' AS DATETIME), NULL),
(125, 'Ghana', CAST('2026-04-15' AS DATETIME), NULL),
(126, 'Togo', CAST('2026-04-15' AS DATETIME), NULL),
(127, 'Benín', CAST('2026-04-15' AS DATETIME), NULL),
(128, 'Nigeria', CAST('2026-04-15' AS DATETIME), NULL),
(129, 'Camerún', CAST('2026-04-15' AS DATETIME), NULL),
(130, 'Chad', CAST('2026-04-15' AS DATETIME), NULL),
(131, 'Gabón', CAST('2026-04-15' AS DATETIME), NULL),
(132, 'República del Congo', CAST('2026-04-15' AS DATETIME), NULL),
(133, 'República Democrática del Congo', CAST('2026-04-15' AS DATETIME), NULL),
(134, 'Angola', CAST('2026-04-15' AS DATETIME), NULL),
(135, 'Zambia', CAST('2026-04-15' AS DATETIME), NULL),
(136, 'Zimbabue', CAST('2026-04-15' AS DATETIME), NULL),
(137, 'Botsuana', CAST('2026-04-15' AS DATETIME), NULL),
(138, 'Namibia', CAST('2026-04-15' AS DATETIME), NULL),
(139, 'Sudáfrica', CAST('2026-04-15' AS DATETIME), NULL),
(140, 'Esuatini', CAST('2026-04-15' AS DATETIME), NULL),
(141, 'Lesoto', CAST('2026-04-15' AS DATETIME), NULL),
(142, 'Mozambique', CAST('2026-04-15' AS DATETIME), NULL),
(143, 'Madagascar', CAST('2026-04-15' AS DATETIME), NULL),
(144, 'Mauricio', CAST('2026-04-15' AS DATETIME), NULL),
(145, 'Australia', CAST('2026-04-15' AS DATETIME), NULL),
(146, 'Nueva Zelanda', CAST('2026-04-15' AS DATETIME), NULL),
(147, 'Fiji', CAST('2026-04-15' AS DATETIME), NULL),
(148, 'Samoa', CAST('2026-04-15' AS DATETIME), NULL),
(149, 'Vanuatu', CAST('2026-04-15' AS DATETIME), NULL),
(150, 'Kiribati', CAST('2026-04-15' AS DATETIME), NULL);
GO

-- MATERIA (49 idiomas/materias)
INSERT INTO materia (id_materia, nombre, descripcion, fecha_alta, fecha_baja) VALUES
(1, 'Inglés', 'Idioma inglés general', CAST('2026-04-15' AS DATETIME), NULL),
(2, 'Portugués', 'Idioma portugués de Brasil y Portugal', CAST('2026-04-15' AS DATETIME), NULL),
(3, 'Francés', 'Idioma francés europeo', CAST('2026-04-15' AS DATETIME), NULL),
(4, 'Italiano', 'Idioma italiano', CAST('2026-04-15' AS DATETIME), NULL),
(5, 'Alemán', 'Idioma alemán', CAST('2026-04-15' AS DATETIME), NULL),
(6, 'Español', 'Español general y regional', CAST('2026-04-15' AS DATETIME), NULL),
(7, 'Japonés', 'Idioma japonés con kanji', CAST('2026-04-15' AS DATETIME), NULL),
(8, 'Chino', 'Chino simplificado', CAST('2026-04-15' AS DATETIME), NULL),
(9, 'Coreano', 'Idioma coreano', CAST('2026-04-15' AS DATETIME), NULL),
(10, 'Ruso', 'Idioma ruso', CAST('2026-04-15' AS DATETIME), NULL),
(11, 'Árabe', 'Árabe moderno estándar', CAST('2026-04-15' AS DATETIME), NULL),
(12, 'Swahili', 'Idioma Swahili', CAST('2026-04-15' AS DATETIME), NULL),
(13, 'Irlandés', 'Idioma irlandés/gaélico', CAST('2026-04-15' AS DATETIME), NULL),
(14, 'Sueco', 'Idioma sueco', CAST('2026-04-15' AS DATETIME), NULL),
(15, 'Noruego', 'Idioma noruego', CAST('2026-04-15' AS DATETIME), NULL),
(16, 'Danés', 'Idioma danés', CAST('2026-04-15' AS DATETIME), NULL),
(17, 'Holandés', 'Idioma holandés/flamenco', CAST('2026-04-15' AS DATETIME), NULL),
(18, 'Polaco', 'Idioma polaco', CAST('2026-04-15' AS DATETIME), NULL),
(19, 'Turco', 'Idioma turco', CAST('2026-04-15' AS DATETIME), NULL),
(20, 'Griego', 'Idioma griego moderno', CAST('2026-04-15' AS DATETIME), NULL),
(21, 'Hebreo', 'Idioma hebreo', CAST('2026-04-15' AS DATETIME), NULL),
(22, 'Tailandés', 'Idioma tailandés', CAST('2026-04-15' AS DATETIME), NULL),
(23, 'Vietnamita', 'Idioma vietnamita', CAST('2026-04-15' AS DATETIME), NULL),
(24, 'Indonesio', 'Idioma indonesio', CAST('2026-04-15' AS DATETIME), NULL),
(27, 'Hindi', 'Idioma hindi', CAST('2026-04-15' AS DATETIME), NULL),
(30, 'Esperanto', 'Idioma auxiliar internacional', CAST('2026-04-15' AS DATETIME), NULL),
(31, 'Ajedrez', 'Curso de ajedrez para mejorar la estrategia cognitiva', CAST('2026-04-15' AS DATETIME), NULL),
(32, 'Inglés Intermedio', 'Curso de inglés en nivel intermedio', CAST('2026-04-15' AS DATETIME), NULL),
(33, 'Matemática', 'Curso de matemáticas y razonamiento lógico', CAST('2026-04-15' AS DATETIME), NULL),
(34, 'Música', 'Curso de teoría y práctica musical', CAST('2026-04-15' AS DATETIME), NULL),
(35, 'Checo', 'Idioma checo', CAST('2026-04-15' AS DATETIME), NULL),
(36, 'Ucraniano', 'Idioma ucraniano', CAST('2026-04-15' AS DATETIME), NULL),
(37, 'Galés', 'Idioma galés', CAST('2026-04-15' AS DATETIME), NULL),
(38, 'Húngaro', 'Idioma húngaro', CAST('2026-04-15' AS DATETIME), NULL),
(39, 'Rumano', 'Idioma rumano', CAST('2026-04-15' AS DATETIME), NULL),
(40, 'Hawaiano', 'Idioma hawaiano', CAST('2026-04-15' AS DATETIME), NULL),
(41, 'Navajo', 'Idioma navajo', CAST('2026-04-15' AS DATETIME), NULL),
(42, 'Klingon', 'Idioma ficticio klingon', CAST('2026-04-15' AS DATETIME), NULL),
(43, 'Alto Valyrio', 'Idioma ficticio alto valyrio', CAST('2026-04-15' AS DATETIME), NULL),
(44, 'Latín', 'Idioma clásico latín', CAST('2026-04-15' AS DATETIME), NULL),
(45, 'Celta Goidélica', 'Idioma celta goidélica', CAST('2026-04-15' AS DATETIME), NULL),
(46, 'Finlandés', 'Idioma finlandés', CAST('2026-04-15' AS DATETIME), NULL),
(47, 'Yidis', 'Idioma yidis', CAST('2026-04-15' AS DATETIME), NULL),
(48, 'Zulu', 'Idioma zulú', CAST('2026-04-15' AS DATETIME), NULL),
(49, 'Criollo Haitiano', 'Idioma criollo haitiano', CAST('2026-04-15' AS DATETIME), NULL);
GO

-- PLAN (30 planes de suscripción)
INSERT INTO [plan] (id_plan, nombre, duracion_dias, descripcion, fecha_alta, fecha_baja) VALUES
(1, 'Super', 0, 'Individual sin anuncios', CAST('2026-04-15' AS DATETIME), NULL),
(2, 'Super Familia', 30, '5 personas mas en tu plan Super', CAST('2026-04-15' AS DATETIME), NULL),
(3, 'Max', 90, 'Accede a videollamadas en vivo con Lili', CAST('2026-04-15' AS DATETIME), NULL),
(4, 'Max Familia', 365, '5 personas mas en tu plan Max', CAST('2026-04-15' AS DATETIME), NULL);
GO

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

-- USUARIO (30 usuarios)
INSERT INTO usuario (id_usuario, id_idioma_nativo, id_pais, nombre, apellido, email, nombre_usuario, telefono, fecha_alta, fecha_nacimiento, record_racha, fecha_baja, corazones_disponibles) VALUES
(1, 6, 1, 'Juan', 'García', 'juan.garcia@email.com', 'juangarc95', '+54 9 1123456789', CAST('2026-01-15' AS DATETIME), CAST('1995-03-20' AS DATE), 45, NULL, 5),
(2, 1, 16, 'Sarah', 'Johnson', 'sarah.johnson@email.com', 'sarahjohn88', '+44 20 7946 0958', CAST('2026-01-18' AS DATETIME), CAST('1988-07-15' AS DATE), 127, NULL, 3),
(3, 2, 2, 'Maria', 'Silva', 'maria.silva@email.com', 'mariasilva92', '+55 11 98765-4321', CAST('2026-01-20' AS DATETIME), CAST('1992-05-10' AS DATE), 89, NULL, 5),
(4, 3, 13, 'Pierre', 'Dubois', 'pierre.dubois@email.com', 'piedub85', '+33 1 42 34 56 00', CAST('2026-01-22' AS DATETIME), CAST('1985-11-25' AS DATE), 156, NULL, 4),
(5, 5, 15, 'Klaus', 'Mueller', 'klaus.mueller@email.com', 'klausm90', '+49 30 12345678', CAST('2026-01-25' AS DATETIME), CAST('1990-09-08' AS DATE), 203, NULL, 5),
(6, 4, 14, 'Marco', 'Rossi', 'marco.rossi@email.com', 'marcorossi87', '+39 06 1234 5678', CAST('2026-02-01' AS DATETIME), CAST('1987-02-14' AS DATE), 67, NULL, 2),
(7, 8, 26, 'Wei', 'Chen', 'wei.chen@email.com', 'weichen99', '+86 10 1234-5678', CAST('2026-02-05' AS DATETIME), CAST('1999-12-30' AS DATE), 34, NULL, 5),
(8, 7, 25, 'Yuki', 'Tanaka', 'yuki.tanaka@email.com', 'yukitanaka93', '+81 3-1234-5678', CAST('2026-02-08' AS DATETIME), CAST('1993-06-17' AS DATE), 112, NULL, 3),
(9, 9, 27, 'Min-jun', 'Park', 'minjun.park@email.com', 'minjunpark94', '+82 2-1234-5678', CAST('2026-02-10' AS DATETIME), CAST('1994-08-22' AS DATE), 91, NULL, 5),
(10, 10, 1, 'Dmitri', 'Volkov', 'dmitri.volkov@email.com', 'dmitrivolkov88', '+54 11 1234-5678', CAST('2026-02-15' AS DATETIME), CAST('1988-04-11' AS DATE), 178, NULL, 1),
(11, 6, 4, 'Carlos', 'Rodríguez', 'carlos.rodriguez@email.com', 'carlosrod91', '+57 1 1234 5678', CAST('2026-02-18' AS DATETIME), CAST('1991-10-05' AS DATE), 123, NULL, 5),
(12, 1, 2, 'Alice', 'Cooper', 'alice.cooper@email.com', 'alicecooper86', '+55 21 99999-8888', CAST('2026-02-20' AS DATETIME), CAST('1986-01-30' AS DATE), 45, NULL, 4),
(13, 3, 1, 'François', 'Martin', 'francois.martin@email.com', 'francoismart89', '+33 2 9123 4567', CAST('2026-02-25' AS DATETIME), CAST('1989-07-19' AS DATE), 98, NULL, 5),
(14, 2, 11, 'Carolina', 'Santos', 'carolina.santos@email.com', 'carolsantos87', '+34 91 1234 567', CAST('2026-03-01' AS DATETIME), CAST('1987-03-28' AS DATE), 154, NULL, 3),
(15, 6, 3, 'Diego', 'López', 'diego.lopez@email.com', 'diegolopez92', '+56 2 1234-5678', CAST('2026-03-05' AS DATETIME), CAST('1992-09-14' AS DATE), 67, NULL, 5),
(16, 1, 12, 'Oliver', 'Thompson', 'oliver.thompson@email.com', 'oliverthom95', '+351 21 1234 567', CAST('2026-03-08' AS DATETIME), CAST('1995-05-21' AS DATE), 213, NULL, 5),
(17, 4, 13, 'Giulia', 'Bianchi', 'giulia.bianchi@email.com', 'giuliabianchi94', '+39 02 1234 5678', CAST('2026-03-10' AS DATETIME), CAST('1994-11-09' AS DATE), 88, NULL, 2),
(18, 5, 16, 'Jasper', 'Hoffmann', 'jasper.hoffmann@email.com', 'jasperh91', '+44 121 1234 5678', CAST('2026-03-12' AS DATETIME), CAST('1991-02-16' AS DATE), 145, NULL, 5),
(19, 27, 30, 'Raj', 'Patel', 'raj.patel@email.com', 'rajpatel93', '+91 22 1234 5678', CAST('2026-03-14' AS DATETIME), CAST('1993-08-03' AS DATE), 76, NULL, 4),
(20, 22, 28, 'Somchai', 'Prasad', 'somchai.prasad@email.com', 'somchaipr90', '+66 2 1234 5678', CAST('2026-03-16' AS DATETIME), CAST('1990-12-11' AS DATE), 189, NULL, 5),
(21, 11, 20, 'Layla', 'Hassan', 'layla.hassan@email.com', 'laylahassan96', '+966 11 1234 5678', CAST('2026-03-18' AS DATETIME), CAST('1996-06-25' AS DATE), 52, NULL, 5),
(22, 6, 5, 'Miguel', 'Torres', 'miguel.torres@email.com', 'migueltor88', '+593 2 1234-567', CAST('2026-03-20' AS DATETIME), CAST('1988-04-30' AS DATE), 134, NULL, 3),
(23, 1, 6, 'Emma', 'Wilson', 'emma.wilson@email.com', 'emmawilson92', '+1 202 555-0128', CAST('2026-03-22' AS DATETIME), CAST('1992-10-07' AS DATE), 97, NULL, 5),
(24, 3, 14, 'Bernard', 'Leclerc', 'bernard.leclerc@email.com', 'bernardlecl89', '+33 4 1234 5678', CAST('2026-03-25' AS DATETIME), CAST('1989-08-19' AS DATE), 168, NULL, 4),
(25, 2, 7, 'Paulo', 'Ferreira', 'paulo.ferreira@email.com', 'pauloferr85', '+58 212 1234-567', CAST('2026-03-28' AS DATETIME), CAST('1985-01-12' AS DATE), 103, NULL, 5),
(26, 5, 23, 'Lucia', 'Schäfer', 'lucia.schafer@email.com', 'luciashaf91', '+41 44 1234 5678', CAST('2026-03-30' AS DATETIME), CAST('1991-07-22' AS DATE), 145, NULL, 2),
(27, 23, 24, 'Anh', 'Nguyen', 'anh.nguyen@email.com', 'anhngyen94', '+84 24 1234 5678', CAST('2026-04-02' AS DATETIME), CAST('1994-03-15' AS DATE), 71, NULL, 5),
(28, 6, 8, 'Roberto', 'González', 'roberto.gonzalez@email.com', 'robgonz87', '+595 21 1234 567', CAST('2026-04-05' AS DATETIME), CAST('1987-09-28' AS DATE), 156, NULL, 4),
(29, 1, 9, 'Thomas', 'Bradley', 'thomas.bradley@email.com', 'thomasbrad90', '+1 202 555-0147', CAST('2026-04-08' AS DATETIME), CAST('1990-05-11' AS DATE), 82, NULL, 3),
(30, 4, 10, 'Valentina', 'Moretti', 'valentina.moretti@email.com', 'valentinamo88', '+39 06 1234 5678', CAST('2026-04-10' AS DATETIME), CAST('1988-12-06' AS DATE), 198, NULL, 5);
GO

-- LIGA (30 ligas)
INSERT INTO liga (id_liga, nombre, fecha_alta, fecha_baja) VALUES
(1, 'Bronze', CAST('2026-01-01' AS DATETIME), NULL),
(2, 'Silver', CAST('2026-01-01' AS DATETIME), NULL),
(3, 'Gold', CAST('2026-01-01' AS DATETIME), NULL),
(4, 'Sapphire', CAST('2026-01-15' AS DATETIME), NULL),
(5, 'Ruby', CAST('2026-01-15' AS DATETIME), NULL),
(6, 'Emerald', CAST('2026-01-10' AS DATETIME), CAST('2026-01-17' AS DATETIME)),
(7, 'Amethyst', CAST('2026-01-17' AS DATETIME), CAST('2026-01-24' AS DATETIME)),
(8, 'Pearl', CAST('2026-02-01' AS DATETIME), NULL),
(9, 'Obsidian', CAST('2026-02-01' AS DATETIME), NULL),
(10, 'Diamond', CAST('2026-02-05' AS DATETIME), NULL);
GO

-- CURSO (245 cursos - 5 niveles por cada uno de los 49 idiomas)
INSERT INTO curso (id_curso, idioma_base, id_materia, nombre, descripcion, fecha_alta, fecha_baja) VALUES
(1, 1, 1, 'Inglés Básico', 'Introducción al inglés', CAST('2026-01-01' AS DATETIME), NULL),
(2, 1, 1, 'Inglés Elemental', 'Inglés nivel elemental', CAST('2026-01-01' AS DATETIME), NULL),
(3, 1, 1, 'Inglés Intermedio', 'Inglés nivel intermedio', CAST('2026-01-01' AS DATETIME), NULL),
(4, 1, 1, 'Inglés Avanzado', 'Inglés nivel avanzado', CAST('2026-01-01' AS DATETIME), NULL),
(5, 1, 1, 'Inglés Experto', 'Inglés nivel experto', CAST('2026-01-01' AS DATETIME), NULL),
(6, 2, 2, 'Portugués Básico', 'Introducción a portugués', CAST('2026-01-01' AS DATETIME), NULL),
(7, 2, 2, 'Portugués Elemental', 'Portugués nivel elemental', CAST('2026-01-01' AS DATETIME), NULL),
(8, 2, 2, 'Portugués Intermedio', 'Portugués nivel intermedio', CAST('2026-01-01' AS DATETIME), NULL),
(9, 2, 2, 'Portugués Avanzado', 'Portugués nivel avanzado', CAST('2026-01-01' AS DATETIME), NULL),
(10, 2, 2, 'Portugués Experto', 'Portugués nivel experto', CAST('2026-01-01' AS DATETIME), NULL),
(11, 3, 3, 'Francés Básico', 'Introducción a francés', CAST('2026-01-01' AS DATETIME), NULL),
(12, 3, 3, 'Francés Elemental', 'Francés nivel elemental', CAST('2026-01-01' AS DATETIME), NULL),
(13, 3, 3, 'Francés Intermedio', 'Francés nivel intermedio', CAST('2026-01-01' AS DATETIME), NULL),
(14, 3, 3, 'Francés Avanzado', 'Francés nivel avanzado', CAST('2026-01-01' AS DATETIME), NULL),
(15, 3, 3, 'Francés Experto', 'Francés nivel experto', CAST('2026-01-01' AS DATETIME), NULL),
(16, 4, 4, 'Italiano Básico', 'Introducción a italiano', CAST('2026-01-01' AS DATETIME), NULL),
(17, 4, 4, 'Italiano Elemental', 'Italiano nivel elemental', CAST('2026-01-01' AS DATETIME), NULL),
(18, 4, 4, 'Italiano Intermedio', 'Italiano nivel intermedio', CAST('2026-01-01' AS DATETIME), NULL),
(19, 4, 4, 'Italiano Avanzado', 'Italiano nivel avanzado', CAST('2026-01-01' AS DATETIME), NULL),
(20, 4, 4, 'Italiano Experto', 'Italiano nivel experto', CAST('2026-01-01' AS DATETIME), NULL),
(21, 5, 5, 'Alemán Básico', 'Introducción a alemán', CAST('2026-01-01' AS DATETIME), NULL),
(22, 5, 5, 'Alemán Elemental', 'Alemán nivel elemental', CAST('2026-01-01' AS DATETIME), NULL),
(23, 5, 5, 'Alemán Intermedio', 'Alemán nivel intermedio', CAST('2026-01-01' AS DATETIME), NULL),
(24, 5, 5, 'Alemán Avanzado', 'Alemán nivel avanzado', CAST('2026-01-01' AS DATETIME), NULL),
(25, 5, 5, 'Alemán Experto', 'Alemán nivel experto', CAST('2026-01-01' AS DATETIME), NULL),
(26, 6, 6, 'Español Básico', 'Introducción a español', CAST('2026-01-01' AS DATETIME), NULL),
(27, 6, 6, 'Español Elemental', 'Español nivel elemental', CAST('2026-01-01' AS DATETIME), NULL),
(28, 6, 6, 'Español Intermedio', 'Español nivel intermedio', CAST('2026-01-01' AS DATETIME), NULL),
(29, 6, 6, 'Español Avanzado', 'Español nivel avanzado', CAST('2026-01-01' AS DATETIME), NULL),
(30, 6, 6, 'Español Experto', 'Español nivel experto', CAST('2026-01-01' AS DATETIME), NULL),
(31, 7, 7, 'Japonés Básico', 'Introducción a japonés', CAST('2026-01-05' AS DATETIME), NULL),
(32, 7, 7, 'Japonés Elemental', 'Japonés nivel elemental', CAST('2026-01-05' AS DATETIME), NULL),
(33, 7, 7, 'Japonés Intermedio', 'Japonés nivel intermedio', CAST('2026-01-05' AS DATETIME), NULL),
(34, 7, 7, 'Japonés Avanzado', 'Japonés nivel avanzado', CAST('2026-01-05' AS DATETIME), NULL),
(35, 7, 7, 'Japonés Experto', 'Japonés nivel experto', CAST('2026-01-05' AS DATETIME), NULL),
(36, 8, 8, 'Chino Básico', 'Introducción a chino', CAST('2026-01-05' AS DATETIME), NULL),
(37, 8, 8, 'Chino Elemental', 'Chino nivel elemental', CAST('2026-01-05' AS DATETIME), NULL),
(38, 8, 8, 'Chino Intermedio', 'Chino nivel intermedio', CAST('2026-01-05' AS DATETIME), NULL),
(39, 8, 8, 'Chino Avanzado', 'Chino nivel avanzado', CAST('2026-01-05' AS DATETIME), NULL),
(40, 8, 8, 'Chino Experto', 'Chino nivel experto', CAST('2026-01-05' AS DATETIME), NULL),
(41, 9, 9, 'Coreano Básico', 'Introducción a coreano', CAST('2026-01-05' AS DATETIME), NULL),
(42, 9, 9, 'Coreano Elemental', 'Coreano nivel elemental', CAST('2026-01-05' AS DATETIME), NULL),
(43, 9, 9, 'Coreano Intermedio', 'Coreano nivel intermedio', CAST('2026-01-05' AS DATETIME), NULL),
(44, 9, 9, 'Coreano Avanzado', 'Coreano nivel avanzado', CAST('2026-01-05' AS DATETIME), NULL),
(45, 9, 9, 'Coreano Experto', 'Coreano nivel experto', CAST('2026-01-05' AS DATETIME), NULL),
(46, 10, 10, 'Ruso Básico', 'Introducción a ruso', CAST('2026-01-10' AS DATETIME), NULL),
(47, 10, 10, 'Ruso Elemental', 'Ruso nivel elemental', CAST('2026-01-10' AS DATETIME), NULL),
(48, 10, 10, 'Ruso Intermedio', 'Ruso nivel intermedio', CAST('2026-01-10' AS DATETIME), NULL),
(49, 10, 10, 'Ruso Avanzado', 'Ruso nivel avanzado', CAST('2026-01-10' AS DATETIME), NULL),
(50, 10, 10, 'Ruso Experto', 'Ruso nivel experto', CAST('2026-01-10' AS DATETIME), NULL),
(51, 11, 11, 'Árabe Básico', 'Introducción a árabe', CAST('2026-01-10' AS DATETIME), NULL),
(52, 11, 11, 'Árabe Elemental', 'Árabe nivel elemental', CAST('2026-01-10' AS DATETIME), NULL),
(53, 11, 11, 'Árabe Intermedio', 'Árabe nivel intermedio', CAST('2026-01-10' AS DATETIME), NULL),
(54, 11, 11, 'Árabe Avanzado', 'Árabe nivel avanzado', CAST('2026-01-10' AS DATETIME), NULL),
(55, 11, 11, 'Árabe Experto', 'Árabe nivel experto', CAST('2026-01-10' AS DATETIME), NULL),
(56, 12, 12, 'Swahili Básico', 'Introducción a swahili', CAST('2026-01-15' AS DATETIME), NULL),
(57, 12, 12, 'Swahili Elemental', 'Swahili nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(58, 12, 12, 'Swahili Intermedio', 'Swahili nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(59, 12, 12, 'Swahili Avanzado', 'Swahili nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(60, 12, 12, 'Swahili Experto', 'Swahili nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(61, 13, 13, 'Irlandés Básico', 'Introducción a irlandés', CAST('2026-01-15' AS DATETIME), NULL),
(62, 13, 13, 'Irlandés Elemental', 'Irlandés nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(63, 13, 13, 'Irlandés Intermedio', 'Irlandés nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(64, 13, 13, 'Irlandés Avanzado', 'Irlandés nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(65, 13, 13, 'Irlandés Experto', 'Irlandés nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(66, 14, 14, 'Sueco Básico', 'Introducción a sueco', CAST('2026-01-15' AS DATETIME), NULL),
(67, 14, 14, 'Sueco Elemental', 'Sueco nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(68, 14, 14, 'Sueco Intermedio', 'Sueco nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(69, 14, 14, 'Sueco Avanzado', 'Sueco nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(70, 14, 14, 'Sueco Experto', 'Sueco nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(71, 15, 15, 'Noruego Básico', 'Introducción a noruego', CAST('2026-01-15' AS DATETIME), NULL),
(72, 15, 15, 'Noruego Elemental', 'Noruego nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(73, 15, 15, 'Noruego Intermedio', 'Noruego nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(74, 15, 15, 'Noruego Avanzado', 'Noruego nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(75, 15, 15, 'Noruego Experto', 'Noruego nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(76, 16, 16, 'Danés Básico', 'Introducción a danés', CAST('2026-01-15' AS DATETIME), NULL),
(77, 16, 16, 'Danés Elemental', 'Danés nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(78, 16, 16, 'Danés Intermedio', 'Danés nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(79, 16, 16, 'Danés Avanzado', 'Danés nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(80, 16, 16, 'Danés Experto', 'Danés nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(81, 17, 17, 'Holandés Básico', 'Introducción a holandés', CAST('2026-01-15' AS DATETIME), NULL),
(82, 17, 17, 'Holandés Elemental', 'Holandés nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(83, 17, 17, 'Holandés Intermedio', 'Holandés nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(84, 17, 17, 'Holandés Avanzado', 'Holandés nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(85, 17, 17, 'Holandés Experto', 'Holandés nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(86, 18, 18, 'Polaco Básico', 'Introducción a polaco', CAST('2026-01-15' AS DATETIME), NULL),
(87, 18, 18, 'Polaco Elemental', 'Polaco nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(88, 18, 18, 'Polaco Intermedio', 'Polaco nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(89, 18, 18, 'Polaco Avanzado', 'Polaco nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(90, 18, 18, 'Polaco Experto', 'Polaco nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(91, 19, 19, 'Turco Básico', 'Introducción a turco', CAST('2026-01-15' AS DATETIME), NULL),
(92, 19, 19, 'Turco Elemental', 'Turco nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(93, 19, 19, 'Turco Intermedio', 'Turco nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(94, 19, 19, 'Turco Avanzado', 'Turco nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(95, 19, 19, 'Turco Experto', 'Turco nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(96, 20, 20, 'Griego Básico', 'Introducción a griego', CAST('2026-01-15' AS DATETIME), NULL),
(97, 20, 20, 'Griego Elemental', 'Griego nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(98, 20, 20, 'Griego Intermedio', 'Griego nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(99, 20, 20, 'Griego Avanzado', 'Griego nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(100, 20, 20, 'Griego Experto', 'Griego nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(101, 21, 21, 'Hebreo Básico', 'Introducción a hebreo', CAST('2026-01-15' AS DATETIME), NULL),
(102, 21, 21, 'Hebreo Elemental', 'Hebreo nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(103, 21, 21, 'Hebreo Intermedio', 'Hebreo nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(104, 21, 21, 'Hebreo Avanzado', 'Hebreo nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(105, 21, 21, 'Hebreo Experto', 'Hebreo nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(106, 22, 22, 'Tailandés Básico', 'Introducción a tailandés', CAST('2026-01-15' AS DATETIME), NULL),
(107, 22, 22, 'Tailandés Elemental', 'Tailandés nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(108, 22, 22, 'Tailandés Intermedio', 'Tailandés nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(109, 22, 22, 'Tailandés Avanzado', 'Tailandés nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(110, 22, 22, 'Tailandés Experto', 'Tailandés nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(111, 23, 23, 'Vietnamita Básico', 'Introducción a vietnamita', CAST('2026-01-15' AS DATETIME), NULL),
(112, 23, 23, 'Vietnamita Elemental', 'Vietnamita nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(113, 23, 23, 'Vietnamita Intermedio', 'Vietnamita nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(114, 23, 23, 'Vietnamita Avanzado', 'Vietnamita nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(115, 23, 23, 'Vietnamita Experto', 'Vietnamita nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(116, 24, 24, 'Indonesio Básico', 'Introducción a indonesio', CAST('2026-01-15' AS DATETIME), NULL),
(117, 24, 24, 'Indonesio Elemental', 'Indonesio nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(118, 24, 24, 'Indonesio Intermedio', 'Indonesio nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(119, 24, 24, 'Indonesio Avanzado', 'Indonesio nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(120, 24, 24, 'Indonesio Experto', 'Indonesio nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(121, 25, 25, 'Malayo Básico', 'Introducción a malayo', CAST('2026-01-15' AS DATETIME), NULL),
(122, 25, 25, 'Malayo Elemental', 'Malayo nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(123, 25, 25, 'Malayo Intermedio', 'Malayo nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(124, 25, 25, 'Malayo Avanzado', 'Malayo nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(125, 25, 25, 'Malayo Experto', 'Malayo nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(126, 26, 26, 'Tagalo Básico', 'Introducción a tagalo', CAST('2026-01-15' AS DATETIME), NULL),
(127, 26, 26, 'Tagalo Elemental', 'Tagalo nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(128, 26, 26, 'Tagalo Intermedio', 'Tagalo nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(129, 26, 26, 'Tagalo Avanzado', 'Tagalo nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(130, 26, 26, 'Tagalo Experto', 'Tagalo nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(131, 27, 27, 'Hindi Básico', 'Introducción a hindi', CAST('2026-01-15' AS DATETIME), NULL),
(132, 27, 27, 'Hindi Elemental', 'Hindi nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(133, 27, 27, 'Hindi Intermedio', 'Hindi nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(134, 27, 27, 'Hindi Avanzado', 'Hindi nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(135, 27, 27, 'Hindi Experto', 'Hindi nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(136, 28, 28, 'Bengalí Básico', 'Introducción a bengalí', CAST('2026-01-15' AS DATETIME), NULL),
(137, 28, 28, 'Bengalí Elemental', 'Bengalí nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(138, 28, 28, 'Bengalí Intermedio', 'Bengalí nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(139, 28, 28, 'Bengalí Avanzado', 'Bengalí nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(140, 28, 28, 'Bengalí Experto', 'Bengalí nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(141, 29, 29, 'Punjabi Básico', 'Introducción a punjabi', CAST('2026-01-15' AS DATETIME), NULL),
(142, 29, 29, 'Punjabi Elemental', 'Punjabi nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(143, 29, 29, 'Punjabi Intermedio', 'Punjabi nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(144, 29, 29, 'Punjabi Avanzado', 'Punjabi nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(145, 29, 29, 'Punjabi Experto', 'Punjabi nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(146, 30, 30, 'Esperanto Básico', 'Introducción a esperanto', CAST('2026-01-15' AS DATETIME), NULL),
(147, 30, 30, 'Esperanto Elemental', 'Esperanto nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(148, 30, 30, 'Esperanto Intermedio', 'Esperanto nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(149, 30, 30, 'Esperanto Avanzado', 'Esperanto nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(150, 30, 30, 'Esperanto Experto', 'Esperanto nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(151, 31, 31, 'Ajedrez Básico', 'Ajedrez nivel básico', CAST('2026-01-15' AS DATETIME), NULL),
(152, 31, 31, 'Ajedrez Elemental', 'Ajedrez nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(153, 31, 31, 'Ajedrez Intermedio', 'Ajedrez nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(154, 31, 31, 'Ajedrez Avanzado', 'Ajedrez nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(155, 31, 31, 'Ajedrez Experto', 'Ajedrez nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(156, 32, 32, 'Inglés Intermedio Básico', 'Inglés intermedio nivel básico', CAST('2026-01-15' AS DATETIME), NULL),
(157, 32, 32, 'Inglés Intermedio Elemental', 'Inglés intermedio nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(158, 32, 32, 'Inglés Intermedio Medio', 'Inglés intermedio nivel medio', CAST('2026-01-15' AS DATETIME), NULL),
(159, 32, 32, 'Inglés Intermedio Avanzado', 'Inglés intermedio nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(160, 32, 32, 'Inglés Intermedio Experto', 'Inglés intermedio nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(161, 33, 33, 'Matemática Básica', 'Matemática nivel básico', CAST('2026-01-15' AS DATETIME), NULL),
(162, 33, 33, 'Matemática Elemental', 'Matemática nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(163, 33, 33, 'Matemática Intermedia', 'Matemática nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(164, 33, 33, 'Matemática Avanzada', 'Matemática nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(165, 33, 33, 'Matemática Experta', 'Matemática nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(166, 34, 34, 'Música Básica', 'Música nivel básico', CAST('2026-01-15' AS DATETIME), NULL),
(167, 34, 34, 'Música Elemental', 'Música nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(168, 34, 34, 'Música Intermedia', 'Música nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(169, 34, 34, 'Música Avanzada', 'Música nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(170, 34, 34, 'Música Experta', 'Música nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(171, 35, 35, 'Checo Básico', 'Introducción a checo', CAST('2026-01-15' AS DATETIME), NULL),
(172, 35, 35, 'Checo Elemental', 'Checo nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(173, 35, 35, 'Checo Intermedio', 'Checo nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(174, 35, 35, 'Checo Avanzado', 'Checo nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(175, 35, 35, 'Checo Experto', 'Checo nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(176, 36, 36, 'Ucraniano Básico', 'Introducción a ucraniano', CAST('2026-01-15' AS DATETIME), NULL),
(177, 36, 36, 'Ucraniano Elemental', 'Ucraniano nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(178, 36, 36, 'Ucraniano Intermedio', 'Ucraniano nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(179, 36, 36, 'Ucraniano Avanzado', 'Ucraniano nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(180, 36, 36, 'Ucraniano Experto', 'Ucraniano nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(181, 37, 37, 'Galés Básico', 'Introducción a galés', CAST('2026-01-15' AS DATETIME), NULL),
(182, 37, 37, 'Galés Elemental', 'Galés nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(183, 37, 37, 'Galés Intermedio', 'Galés nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(184, 37, 37, 'Galés Avanzado', 'Galés nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(185, 37, 37, 'Galés Experto', 'Galés nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(186, 38, 38, 'Húngaro Básico', 'Introducción a húngaro', CAST('2026-01-15' AS DATETIME), NULL),
(187, 38, 38, 'Húngaro Elemental', 'Húngaro nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(188, 38, 38, 'Húngaro Intermedio', 'Húngaro nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(189, 38, 38, 'Húngaro Avanzado', 'Húngaro nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(190, 38, 38, 'Húngaro Experto', 'Húngaro nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(191, 39, 39, 'Rumano Básico', 'Introducción a rumano', CAST('2026-01-15' AS DATETIME), NULL),
(192, 39, 39, 'Rumano Elemental', 'Rumano nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(193, 39, 39, 'Rumano Intermedio', 'Rumano nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(194, 39, 39, 'Rumano Avanzado', 'Rumano nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(195, 39, 39, 'Rumano Experto', 'Rumano nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(196, 40, 40, 'Hawaiano Básico', 'Introducción a hawaiano', CAST('2026-01-15' AS DATETIME), NULL),
(197, 40, 40, 'Hawaiano Elemental', 'Hawaiano nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(198, 40, 40, 'Hawaiano Intermedio', 'Hawaiano nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(199, 40, 40, 'Hawaiano Avanzado', 'Hawaiano nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(200, 40, 40, 'Hawaiano Experto', 'Hawaiano nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(201, 41, 41, 'Navajo Básico', 'Introducción a navajo', CAST('2026-01-15' AS DATETIME), NULL),
(202, 41, 41, 'Navajo Elemental', 'Navajo nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(203, 41, 41, 'Navajo Intermedio', 'Navajo nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(204, 41, 41, 'Navajo Avanzado', 'Navajo nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(205, 41, 41, 'Navajo Experto', 'Navajo nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(206, 42, 42, 'Klingon Básico', 'Introducción a klingon', CAST('2026-01-15' AS DATETIME), NULL),
(207, 42, 42, 'Klingon Elemental', 'Klingon nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(208, 42, 42, 'Klingon Intermedio', 'Klingon nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(209, 42, 42, 'Klingon Avanzado', 'Klingon nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(210, 42, 42, 'Klingon Experto', 'Klingon nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(211, 43, 43, 'Alto Valyrio Básico', 'Introducción a alto valyrio', CAST('2026-01-15' AS DATETIME), NULL),
(212, 43, 43, 'Alto Valyrio Elemental', 'Alto valyrio nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(213, 43, 43, 'Alto Valyrio Intermedio', 'Alto valyrio nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(214, 43, 43, 'Alto Valyrio Avanzado', 'Alto valyrio nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(215, 43, 43, 'Alto Valyrio Experto', 'Alto valyrio nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(216, 44, 44, 'Latín Básico', 'Introducción a latín', CAST('2026-01-15' AS DATETIME), NULL),
(217, 44, 44, 'Latín Elemental', 'Latín nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(218, 44, 44, 'Latín Intermedio', 'Latín nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(219, 44, 44, 'Latín Avanzado', 'Latín nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(220, 44, 44, 'Latín Experto', 'Latín nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(221, 45, 45, 'Celta Goidélica Básico', 'Introducción a celta goidélica', CAST('2026-01-15' AS DATETIME), NULL),
(222, 45, 45, 'Celta Goidélica Elemental', 'Celta goidélica nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(223, 45, 45, 'Celta Goidélica Intermedio', 'Celta goidélica nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(224, 45, 45, 'Celta Goidélica Avanzado', 'Celta goidélica nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(225, 45, 45, 'Celta Goidélica Experto', 'Celta goidélica nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(226, 46, 46, 'Finlandés Básico', 'Introducción a finlandés', CAST('2026-01-15' AS DATETIME), NULL),
(227, 46, 46, 'Finlandés Elemental', 'Finlandés nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(228, 46, 46, 'Finlandés Intermedio', 'Finlandés nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(229, 46, 46, 'Finlandés Avanzado', 'Finlandés nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(230, 46, 46, 'Finlandés Experto', 'Finlandés nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(231, 47, 47, 'Yidis Básico', 'Introducción a yidis', CAST('2026-01-15' AS DATETIME), NULL),
(232, 47, 47, 'Yidis Elemental', 'Yidis nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(233, 47, 47, 'Yidis Intermedio', 'Yidis nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(234, 47, 47, 'Yidis Avanzado', 'Yidis nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(235, 47, 47, 'Yidis Experto', 'Yidis nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(236, 48, 48, 'Zulu Básico', 'Introducción a zulu', CAST('2026-01-15' AS DATETIME), NULL),
(237, 48, 48, 'Zulu Elemental', 'Zulu nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(238, 48, 48, 'Zulu Intermedio', 'Zulu nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(239, 48, 48, 'Zulu Avanzado', 'Zulu nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(240, 48, 48, 'Zulu Experto', 'Zulu nivel experto', CAST('2026-01-15' AS DATETIME), NULL),
(241, 49, 49, 'Criollo Haitiano Básico', 'Introducción a criollo haitiano', CAST('2026-01-15' AS DATETIME), NULL),
(242, 49, 49, 'Criollo Haitiano Elemental', 'Criollo haitiano nivel elemental', CAST('2026-01-15' AS DATETIME), NULL),
(243, 49, 49, 'Criollo Haitiano Intermedio', 'Criollo haitiano nivel intermedio', CAST('2026-01-15' AS DATETIME), NULL),
(244, 49, 49, 'Criollo Haitiano Avanzado', 'Criollo haitiano nivel avanzado', CAST('2026-01-15' AS DATETIME), NULL),
(245, 49, 49, 'Criollo Haitiano Experto', 'Criollo haitiano nivel experto', CAST('2026-01-15' AS DATETIME), NULL);
GO

-- NIVEL (245 niveles - 1 nivel por curso)
INSERT INTO nivel (id_nivel, id_curso, nombre, descripcion, fecha_alta, fecha_baja) VALUES
(1, 1, 'Nivel 1', 'Alfabeto y saludos', CAST('2026-01-01' AS DATETIME), NULL),
(2, 2, 'Level 2', 'Conversaciones básicas', CAST('2026-01-01' AS DATETIME), NULL),
(3, 3, 'Level 3', 'Discursos y presentaciones', CAST('2026-01-01' AS DATETIME), NULL),
(4, 4, 'Nível 1', 'Introdução ao português', CAST('2026-01-01' AS DATETIME), NULL),
(5, 5, 'Nível 2', 'Conversas cotidianas', CAST('2026-01-01' AS DATETIME), NULL),
(6, 6, 'Niveau 1', 'Initiation au français', CAST('2026-01-01' AS DATETIME), NULL),
(7, 7, 'Niveau 2', 'Conversations quotidiennes', CAST('2026-01-01' AS DATETIME), NULL),
(8, 8, 'Livello 1', 'Introduzione all''italiano', CAST('2026-01-01' AS DATETIME), NULL),
(9, 9, 'Stufe 1', 'Einführung ins Deutsch', CAST('2026-01-01' AS DATETIME), NULL),
(10, 10, 'Stufe 2', 'Alltägliche Gespräche', CAST('2026-01-01' AS DATETIME), NULL),
(11, 11, 'Nivel 1', 'Introducción al español', CAST('2026-01-01' AS DATETIME), NULL),
(12, 12, 'レベル 1', 'ひらがなと基本会話', CAST('2026-01-05' AS DATETIME), NULL),
(13, 13, '等级 1', '基本汉字和会话', CAST('2026-01-05' AS DATETIME), NULL),
(14, 14, '레벨 1', '한글 기초', CAST('2026-01-05' AS DATETIME), NULL),
(15, 15, 'Уровень 1', 'Кириллица и основы', CAST('2026-01-10' AS DATETIME), NULL),
(16, 16, 'المستوى 1', 'الحروف والعبارات الأساسية', CAST('2026-01-10' AS DATETIME), NULL),
(17, 17, 'Kiwango 1', 'Alfabeti na maneno', CAST('2026-01-15' AS DATETIME), NULL),
(18, 18, 'Nivå 1', 'Svenska grunder', CAST('2026-01-15' AS DATETIME), NULL),
(19, 19, 'Nivå 1', 'Norsk grunnlag', CAST('2026-01-15' AS DATETIME), NULL),
(20, 20, 'Niveau 1', 'Nederlands basis', CAST('2026-01-15' AS DATETIME), NULL),
(21, 21, 'Business Level 1', 'Negocios y reuniones', CAST('2026-02-01' AS DATETIME), NULL),
(22, 22, 'Negócios 1', 'Correspondência comercial', CAST('2026-02-01' AS DATETIME), NULL),
(23, 23, 'Affaires 1', 'Correspondance professionnelle', CAST('2026-02-05' AS DATETIME), NULL),
(24, 24, 'ビジネス 1', 'メール と電話', CAST('2026-02-10' AS DATETIME), NULL),
(25, 25, '商务 1', '电子邮件和会议', CAST('2026-02-10' AS DATETIME), NULL),
(26, 26, 'Travel 1', 'Hotel y transporte', CAST('2026-02-15' AS DATETIME), NULL),
(27, 27, 'Cultura 1', 'Tradiciones hispanas', CAST('2026-02-20' AS DATETIME), NULL),
(28, 28, 'Conversazione 1', 'Dialogues quotidians', CAST('2026-03-01' AS DATETIME), NULL),
(29, 29, 'ระดับ 1', 'ไทย พื้นฐาน', CAST('2026-03-05' AS DATETIME), NULL),
(30, 30, 'Cấp độ 1', 'Tiếng Việt cơ bản', CAST('2026-03-10' AS DATETIME), NULL);
GO

-- EJERCICIO (30 ejercicios)
INSERT INTO ejercicio (id_ejercicio, id_nivel, tipo, pregunta, xp_otorgado, dificultad, fecha_alta, fecha_baja) VALUES
(1, 1, 'Matching', 'Empareja la palabra con la imagen', 10, 'fácil', CAST('2026-01-01' AS DATETIME), NULL),
(2, 1, 'Listening', 'Escucha y selecciona la palabra correcta', 15, 'medio', CAST('2026-01-01' AS DATETIME), NULL),
(3, 2, 'Translation', 'Traduce la frase al inglés', 20, 'medio', CAST('2026-01-01' AS DATETIME), NULL),
(4, 2, 'Sentence Order', 'Ordena las palabras para formar una oración', 15, 'medio', CAST('2026-01-01' AS DATETIME), NULL),
(5, 3, 'Essay Writing', 'Escribe un párrafo sobre tu día', 50, 'difícil', CAST('2026-01-01' AS DATETIME), NULL),
(6, 4, 'Multiple Choice', 'Elige la opción correcta em português', 10, 'fácil', CAST('2026-01-01' AS DATETIME), NULL),
(7, 5, 'Dialogue', 'Completa el diálogo en portugués', 25, 'medio', CAST('2026-01-01' AS DATETIME), NULL),
(8, 6, 'Fill Blanks', 'Rellena los espacios en francés', 15, 'medio', CAST('2026-01-01' AS DATETIME), NULL),
(9, 7, 'Speaking', 'Repite la frase en francés', 20, 'medio', CAST('2026-01-01' AS DATETIME), NULL),
(10, 8, 'Reading', 'Lee y responde preguntas en italiano', 20, 'medio', CAST('2026-01-01' AS DATETIME), NULL),
(11, 9, 'Tap Pairs', 'Toca los pares de palabras iguales', 10, 'fácil', CAST('2026-01-01' AS DATETIME), NULL),
(12, 10, 'Listening Challenge', 'Escucha la frase completa en alemán', 20, 'difícil', CAST('2026-01-01' AS DATETIME), NULL),
(13, 11, 'Plural Forms', 'Forma el plural en español', 15, 'medio', CAST('2026-01-01' AS DATETIME), NULL),
(14, 12, 'Kanji Practice', '書いてください - Escribe el kanji', 20, 'difícil', CAST('2026-01-05' AS DATETIME), NULL),
(15, 13, 'Tone Practice', '发音练习 - Práctica de tonos', 25, 'difícil', CAST('2026-01-05' AS DATETIME), NULL),
(16, 14, 'Hangul Writing', '한글 쓰기 - Escribe hangul', 15, 'medio', CAST('2026-01-05' AS DATETIME), NULL),
(17, 15, 'Cyrillic Reading', 'Чтение на кириллице', 15, 'medio', CAST('2026-01-10' AS DATETIME), NULL),
(18, 16, 'Arabic Script', 'قراءة النصوص - Lectura de texto árabe', 20, 'difícil', CAST('2026-01-10' AS DATETIME), NULL),
(19, 17, 'Swahili Vocabulary', 'Jifunze maneno - Aprende vocabulario', 15, 'medio', CAST('2026-01-15' AS DATETIME), NULL),
(20, 18, 'Svenska Grammar', 'Svenska grammatik - Sueco', 20, 'medio', CAST('2026-01-15' AS DATETIME), NULL),
(21, 21, 'Email Writing', 'Escribe un email profesional', 40, 'difícil', CAST('2026-02-01' AS DATETIME), NULL),
(22, 22, 'Meeting Phrases', 'Frases para reuniones en portugués', 30, 'medio', CAST('2026-02-01' AS DATETIME), NULL),
(23, 23, 'Negotiation Role Play', 'Negociación: papel A', 40, 'difícil', CAST('2026-02-05' AS DATETIME), NULL),
(24, 24, '電話会議', 'Conferencia telefónica en japonés', 35, 'difícil', CAST('2026-02-10' AS DATETIME), NULL),
(25, 25, '商务演讲', 'Presentación empresarial en chino', 45, 'difícil', CAST('2026-02-10' AS DATETIME), NULL),
(26, 26, 'Hotel Booking', 'Reserva hotel en English', 25, 'medio', CAST('2026-02-15' AS DATETIME), NULL),
(27, 27, 'Cultural Quiz', 'Cuestionario sobre cultura hispana', 30, 'medio', CAST('2026-02-20' AS DATETIME), NULL),
(28, 28, 'Conversazione Libera', 'Conversación libre sobre hobbies', 35, 'difícil', CAST('2026-03-01' AS DATETIME), NULL),
(29, 29, 'Thai Conversation', 'สนทนาภาษาไทย - Conversación tailandesa', 30, 'medio', CAST('2026-03-05' AS DATETIME), NULL),
(30, 30, 'Vietnamese Dialogue', 'Hội thoại tiếng Việt - Diálogo vietnamita', 30, 'medio', CAST('2026-03-10' AS DATETIME), NULL);
GO

-- PRODUCTO (30 productos)
INSERT INTO producto (id_producto, id_tipo_producto, nombre, descripcion, precio, fecha_alta, fecha_baja) VALUES
(1, 1, 'Pack 5 Vidas', 'Restaura 5 corazones', 0.99, CAST('2026-01-01' AS DATETIME), NULL),
(2, 1, 'Pack 25 Vidas', 'Restaura 25 corazones', 4.99, CAST('2026-01-01' AS DATETIME), NULL),
(3, 2, 'Double XP 1h', 'Gana el doble de XP durante 1 hora', 2.99, CAST('2026-01-01' AS DATETIME), NULL),
(4, 2, 'Triple XP 1h', 'Gana el triple de XP durante 1 hora', 4.99, CAST('2026-01-01' AS DATETIME), NULL),
(5, 3, 'Offline Pack 1', 'Descarga 10 lecciones para offline', 1.99, CAST('2026-01-01' AS DATETIME), NULL),
(6, 3, 'Offline Pack 2', 'Descarga 50 lecciones para offline', 7.99, CAST('2026-01-01' AS DATETIME), NULL),
(7, 4, 'Racha Freeze 1 día', 'Para tu racha durante 1 día', 1.99, CAST('2026-01-01' AS DATETIME), NULL),
(8, 4, 'Racha Guard 7 días', 'Protege tu racha por 1 semana', 4.99, CAST('2026-01-01' AS DATETIME), NULL),
(9, 7, '100 Gemas', '100 gemas para usar en tienda', 0.99, CAST('2026-01-01' AS DATETIME), NULL),
(10, 7, '500 Gemas', '500 gemas', 3.99, CAST('2026-01-01' AS DATETIME), NULL),
(11, 7, '2000 Gemas', '2000 gemas con bonus', 12.99, CAST('2026-01-01' AS DATETIME), NULL),
(12, 8, 'Dark Mode', 'Modo oscuro exclusivo para Premium', 2.99, CAST('2026-01-05' AS DATETIME), NULL),
(13, 9, 'Avatar Ejecutivo', 'Avatar profesional para perfil', 1.99, CAST('2026-01-05' AS DATETIME), NULL),
(14, 9, 'Avatar Viajero', 'Avatar de viajero experimentado', 1.99, CAST('2026-01-05' AS DATETIME), NULL),
(15, 10, 'Tema Azul Océano', 'Tema de interfaz azul oceánico', 1.99, CAST('2026-01-10' AS DATETIME), NULL),
(16, 10, 'Tema Verde Bosque', 'Tema verde natural', 1.99, CAST('2026-01-10' AS DATETIME), NULL),
(17, 11, 'Estadísticas Pro 1m', 'Acceso a gráficos avanzados 1 mes', 2.99, CAST('2026-01-10' AS DATETIME), NULL),
(18, 12, 'Tutor IA 1h', 'Chat con tutor IA por 1 hora', 3.99, CAST('2026-01-10' AS DATETIME), NULL),
(19, 13, 'Pronunciación Native 1 Lección', 'Audio de hablante nativo', 0.99, CAST('2026-01-15' AS DATETIME), NULL),
(20, 14, 'Corrección Humana 1 Ensayo', 'Revisión por profesor nativo', 4.99, CAST('2026-01-15' AS DATETIME), NULL),
(21, 15, 'Certificado A1', 'Certificado de habilidad A1', 9.99, CAST('2026-02-01' AS DATETIME), NULL),
(22, 15, 'Certificado B1', 'Certificado de habilidad B1', 14.99, CAST('2026-02-01' AS DATETIME), NULL),
(23, 16, 'Historias Volumen 1', 'Colección de 10 historias', 3.99, CAST('2026-02-05' AS DATETIME), NULL),
(24, 17, 'Chat 1-a-1 30 min', 'Conversación en vivo con otros usuarios', 2.99, CAST('2026-02-05' AS DATETIME), NULL),
(25, 18, 'Podcast Pack Febrero', 'Acceso a podcasts febrero', 1.99, CAST('2026-02-10' AS DATETIME), NULL),
(26, 19, 'Clase Privada 30 min', 'Clase 1-a-1 con instructor', 19.99, CAST('2026-02-10' AS DATETIME), NULL),
(27, 20, 'Grupo Estudio Premium', 'Crear grupo privado de estudio', 4.99, CAST('2026-02-15' AS DATETIME), NULL),
(28, 21, 'Contenido Avanzado Acceso', 'Desbloquea contenido premium', 5.99, CAST('2026-02-20' AS DATETIME), NULL),
(29, 24, 'Descargas Ilimitadas 1m', 'Descargas sin límite 1 mes', 3.99, CAST('2026-03-01' AS DATETIME), NULL),
(30, 23, 'Soporte Prioritario 1m', 'Atención prioritaria 1 mes', 2.99, CAST('2026-03-05' AS DATETIME), NULL);
GO

-- GRUPO_COMPETENCIA (30 grupos competitivos)
INSERT INTO grupo_competencia (id_grupo_competencia, id_liga, fecha_inicio, fecha_fin, fecha_alta, fecha_baja, cantidad_participantes) VALUES
(1, 1, CAST('2026-04-15' AS DATETIME), CAST('2026-04-22' AS DATETIME), CAST('2026-04-15' AS DATETIME), NULL, 15),
(2, 2, CAST('2026-04-15' AS DATETIME), CAST('2026-04-22' AS DATETIME), CAST('2026-04-15' AS DATETIME), NULL, 22),
(3, 3, CAST('2026-04-15' AS DATETIME), CAST('2026-04-22' AS DATETIME), CAST('2026-04-15' AS DATETIME), NULL, 8),
(4, 4, CAST('2026-04-10' AS DATETIME), CAST('2026-04-30' AS DATETIME), CAST('2026-04-10' AS DATETIME), NULL, 50),
(5, 5, CAST('2026-04-10' AS DATETIME), CAST('2026-05-10' AS DATETIME), CAST('2026-04-10' AS DATETIME), NULL, 35),
(6, 6, CAST('2026-04-08' AS DATETIME), CAST('2026-04-15' AS DATETIME), CAST('2026-04-08' AS DATETIME), CAST('2026-04-15' AS DATETIME), 12),
(7, 7, CAST('2026-04-15' AS DATETIME), CAST('2026-04-22' AS DATETIME), CAST('2026-04-15' AS DATETIME), NULL, 18),
(8, 8, CAST('2026-04-01' AS DATETIME), CAST('2026-04-30' AS DATETIME), CAST('2026-04-01' AS DATETIME), NULL, 40),
(9, 9, CAST('2026-04-01' AS DATETIME), CAST('2026-04-30' AS DATETIME), CAST('2026-04-01' AS DATETIME), NULL, 60),
(10, 10, CAST('2026-04-05' AS DATETIME), CAST('2026-04-12' AS DATETIME), CAST('2026-04-05' AS DATETIME), NULL, 25),
(11, 11, CAST('2026-03-20' AS DATETIME), CAST('2026-04-20' AS DATETIME), CAST('2026-03-20' AS DATETIME), NULL, 45),
(12, 12, CAST('2026-04-01' AS DATETIME), CAST('2026-04-30' AS DATETIME), CAST('2026-04-01' AS DATETIME), NULL, 100),
(13, 13, CAST('2026-03-01' AS DATETIME), CAST('2026-04-30' AS DATETIME), CAST('2026-03-01' AS DATETIME), NULL, 55),
(14, 14, CAST('2026-04-10' AS DATETIME), CAST('2026-04-17' AS DATETIME), CAST('2026-04-10' AS DATETIME), NULL, 20),
(15, 15, CAST('2026-04-01' AS DATETIME), CAST('2026-05-01' AS DATETIME), CAST('2026-04-01' AS DATETIME), NULL, 30),
(16, 16, CAST('2026-04-05' AS DATETIME), CAST('2026-05-05' AS DATETIME), CAST('2026-04-05' AS DATETIME), NULL, 70),
(17, 17, CAST('2026-03-20' AS DATETIME), CAST('2026-04-20' AS DATETIME), CAST('2026-03-20' AS DATETIME), NULL, 85),
(18, 18, CAST('2026-04-01' AS DATETIME), CAST('2026-04-30' AS DATETIME), CAST('2026-04-01' AS DATETIME), NULL, 120),
(19, 19, CAST('2026-04-01' AS DATETIME), CAST('2026-06-30' AS DATETIME), CAST('2026-04-01' AS DATETIME), NULL, 200),
(20, 20, CAST('2026-04-10' AS DATETIME), CAST('2026-04-24' AS DATETIME), CAST('2026-04-10' AS DATETIME), NULL, 42),
(21, 21, CAST('2026-04-08' AS DATETIME), CAST('2026-04-15' AS DATETIME), CAST('2026-04-08' AS DATETIME), CAST('2026-04-15' AS DATETIME), 28),
(22, 22, CAST('2026-04-01' AS DATETIME), CAST('2026-05-01' AS DATETIME), CAST('2026-04-01' AS DATETIME), NULL, 65),
(23, 23, CAST('2026-04-05' AS DATETIME), CAST('2026-05-05' AS DATETIME), CAST('2026-04-05' AS DATETIME), NULL, 95),
(24, 24, CAST('2026-04-10' AS DATETIME), CAST('2026-05-10' AS DATETIME), CAST('2026-04-10' AS DATETIME), NULL, 78),
(25, 25, CAST('2026-04-01' AS DATETIME), CAST('2026-04-30' AS DATETIME), CAST('2026-04-01' AS DATETIME), NULL, 110),
(26, 26, CAST('2026-04-15' AS DATETIME), CAST('2026-04-22' AS DATETIME), CAST('2026-04-15' AS DATETIME), NULL, 35),
(27, 27, CAST('2026-04-12' AS DATETIME), CAST('2026-04-19' AS DATETIME), CAST('2026-04-12' AS DATETIME), NULL, 48),
(28, 28, CAST('2026-03-15' AS DATETIME), CAST('2026-04-15' AS DATETIME), CAST('2026-03-15' AS DATETIME), NULL, 90),
(29, 29, CAST('2026-04-01' AS DATETIME), CAST('2026-04-30' AS DATETIME), CAST('2026-04-01' AS DATETIME), NULL, 125),
(30, 30, CAST('2026-04-10' AS DATETIME), CAST('2026-05-10' AS DATETIME), CAST('2026-04-10' AS DATETIME), NULL, 80);
GO

-- VARIACION_PRECIO_PLAN (30 variaciones)
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

-- VARIACION_PRECIO_PRODUCTO (30 variaciones de precio)
INSERT INTO variacion_precio_producto (id_variacion_precio_producto, id_producto, precio, fecha_inicio, fecha_fin) VALUES
(1, 1, 0.99, CAST('2026-01-01' AS DATETIME), NULL),
(2, 2, 4.99, CAST('2026-01-01' AS DATETIME), NULL),
(3, 3, 2.99, CAST('2026-01-01' AS DATETIME), NULL),
(4, 4, 4.99, CAST('2026-01-01' AS DATETIME), NULL),
(5, 5, 1.99, CAST('2026-01-01' AS DATETIME), NULL),
(6, 6, 7.99, CAST('2026-01-01' AS DATETIME), NULL),
(7, 7, 1.99, CAST('2026-01-01' AS DATETIME), NULL),
(8, 8, 4.99, CAST('2026-01-01' AS DATETIME), NULL),
(9, 9, 0.99, CAST('2026-01-01' AS DATETIME), NULL),
(10, 10, 3.99, CAST('2026-01-01' AS DATETIME), NULL),
(11, 11, 12.99, CAST('2026-01-01' AS DATETIME), NULL),
(12, 12, 2.99, CAST('2026-01-05' AS DATETIME), NULL),
(13, 13, 1.99, CAST('2026-01-05' AS DATETIME), NULL),
(14, 14, 1.99, CAST('2026-01-05' AS DATETIME), NULL),
(15, 15, 1.99, CAST('2026-01-10' AS DATETIME), NULL),
(16, 16, 1.99, CAST('2026-01-10' AS DATETIME), NULL),
(17, 17, 2.99, CAST('2026-01-10' AS DATETIME), NULL),
(18, 18, 3.99, CAST('2026-01-10' AS DATETIME), NULL),
(19, 19, 0.99, CAST('2026-01-15' AS DATETIME), NULL),
(20, 20, 4.99, CAST('2026-01-15' AS DATETIME), NULL),
(21, 21, 9.99, CAST('2026-02-01' AS DATETIME), NULL),
(22, 22, 14.99, CAST('2026-02-01' AS DATETIME), NULL),
(23, 23, 3.99, CAST('2026-02-05' AS DATETIME), NULL),
(24, 24, 2.99, CAST('2026-02-05' AS DATETIME), NULL),
(25, 25, 1.99, CAST('2026-02-10' AS DATETIME), NULL),
(26, 26, 19.99, CAST('2026-02-10' AS DATETIME), NULL),
(27, 27, 4.99, CAST('2026-02-15' AS DATETIME), NULL),
(28, 28, 5.99, CAST('2026-02-20' AS DATETIME), NULL),
(29, 29, 3.99, CAST('2026-03-01' AS DATETIME), NULL),
(30, 30, 2.99, CAST('2026-03-05' AS DATETIME), NULL);
GO

-- ===================================
-- TABLAS TRANSACCIONALES (1000+ registros)
-- ===================================

-- SUSCRIPCION (1000+ suscripciones)
-- Insertaremos 1050 registros de suscripciones
DECLARE @i INT = 1
DECLARE @user_id INT
DECLARE @plan_id INT
DECLARE @fecha_inicio DATETIME
DECLARE @fecha_fin DATETIME
DECLARE @precio DECIMAL(10,2)

WHILE @i <= 1050
BEGIN
  SET @user_id = ((@i - 1) % 30) + 1
  SET @plan_id = ((@i - 1) % 29) + 1
  SET @fecha_inicio = DATEADD(DAY, -(@i % 90), CAST('2026-04-15' AS DATETIME))
  SET @fecha_fin = DATEADD(DAY, CASE WHEN @plan_id IN (1) THEN 0 ELSE IIF(@plan_id > 16 AND @plan_id < 22, 7, IIF(@plan_id > 21, 2, 30)) END, @fecha_inicio)
  SET @precio = CASE 
    WHEN @plan_id = 1 THEN 0.00
    WHEN @plan_id = 2 THEN 9.99
    WHEN @plan_id = 3 THEN 24.99
    WHEN @plan_id IN (4,5,6,7) THEN 9.99 + (@plan_id * 5)
    ELSE 19.99
  END
  
  INSERT INTO suscripcion (id_suscripcion, id_usuario, id_plan, fecha_inicio, fecha_fin, precio)
  VALUES (@i, @user_id, @plan_id, @fecha_inicio, @fecha_fin, @precio)
  
  SET @i = @i + 1
END
GO

-- FACTURA (1050 facturas)
DECLARE @i INT = 1
WHILE @i <= 1050
BEGIN
  INSERT INTO factura (id_factura, id_usuario, fecha_emision, fecha_vencimiento, total)
  VALUES (
    @i,
    ((@i - 1) % 30) + 1,
    DATEADD(DAY, -(@i % 100), CAST('2026-04-15' AS DATETIME)),
    DATEADD(DAY, 30, DATEADD(DAY, -(@i % 100), CAST('2026-04-15' AS DATETIME))),
    ROUND(RAND() * 200 + 5, 2)
  )
  SET @i = @i + 1
END
GO

-- FACTURA_DETALLE (1050+ detalles)
DECLARE @i INT = 1
DECLARE @factura_id INT
WHILE @i <= 1050
BEGIN
  SET @factura_id = (((@i - 1) % 3) + 1) + ((@i - 1) / 3) * 3
  
  INSERT INTO factura_detalle (id_factura_detalle, id_factura, id_suscripcion, id_producto, cantidad, precio_unitario)
  VALUES (
    @i,
    CASE WHEN @i <= 500 THEN (@i - 1) / 2 + 1 ELSE @i - 500 END,
    CASE WHEN @i % 2 = 1 THEN ((@i - 1) / 2) % 1050 + 1 ELSE NULL END,
    CASE WHEN @i % 2 = 0 THEN ((@i - 1) / 2) % 30 + 1 ELSE NULL END,
    IIF(@i % 2 = 0, FLOOR(RAND() * 5) + 1, 1),
    ROUND(RAND() * 20 + 0.99, 2)
  )
  SET @i = @i + 1
END
GO

-- CURSO_POR_USUARIO (1050 progresiones)
DECLARE @i INT = 1
WHILE @i <= 1050
BEGIN
  INSERT INTO curso_por_usuario (id_curso_por_usuario, id_curso, id_usuario, progreso_porcentaje, xp_total, fecha_inicio, fecha_ultimo_progreso, fecha_fin)
  VALUES (
    @i,
    ((@i - 1) % 30) + 1,
    ((@i - 1) % 30) + 1,
    ROUND(RAND() * 100, 2),
    FLOOR(RAND() * 5000) + 100,
    DATEADD(DAY, -(FLOOR(RAND() * 100)), CAST('2026-04-15' AS DATETIME)),
    DATEADD(DAY, -(FLOOR(RAND() * 10)), CAST('2026-04-15' AS DATETIME)),
    CASE WHEN RAND() > 0.7 THEN DATEADD(DAY, FLOOR(RAND() * 50), CAST('2026-04-15' AS DATETIME)) ELSE NULL END
  )
  SET @i = @i + 1
END
GO

-- EJERCICIO_REALIZADO (1050+ ejercicios completados)
DECLARE @i INT = 1
WHILE @i <= 1050
BEGIN
  INSERT INTO ejercicio_realizado (id_ejercicio_realizado, id_curso_por_usuario, id_ejercicio, fecha, correcto, xp_ganado)
  VALUES (
    @i,
    ((@i - 1) % 1050) + 1,
    ((@i - 1) % 30) + 1,
    DATEADD(MINUTE, -(FLOOR(RAND() * 10000)), CAST('2026-04-15' AS DATETIME)),
    CASE WHEN RAND() > 0.2 THEN 1 ELSE 0 END,
    FLOOR(RAND() * 50) + 10
  )
  SET @i = @i + 1
END
GO

-- GRUPO_COMPETENCIA_POR_USUARIO (1050+ participaciones)
DECLARE @i INT = 1
DECLARE @grupo_idx INT
DECLARE @user_idx INT
WHILE @i <= 1050
BEGIN
  SET @grupo_idx = ((@i - 1) % 30) + 1
  SET @user_idx = ((@i - 1) % 30) + 1
  
  INSERT INTO grupo_competencia_por_usuario (id_grupo_competencia_por_usuario, id_usuario, id_grupo_competencia, xp_acumulado_grupo, puesto, fecha_alta, fecha_baja)
  VALUES (
    @i,
    @user_idx,
    @grupo_idx,
    FLOOR(RAND() * 10000) + 1000,
    FLOOR(RAND() * 50) + 1,
    DATEADD(DAY, -(FLOOR(RAND() * 30)), CAST('2026-04-15' AS DATETIME)),
    NULL
  )
  SET @i = @i + 1
END
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
