
CREATE  TABLE liga ( 
	id_liga              int      NOT NULL,
	nombre               varchar(50)      NOT NULL,
	fecha_alta           datetime      NOT NULL,
	fecha_baja           datetime      NULL,
	CONSTRAINT pk_liga PRIMARY KEY  ( id_liga ) 
 );
GO

CREATE  TABLE materia ( 
	id_materia           int      NOT NULL,
	nombre               varchar(50)      NOT NULL,
	descripcion          varchar(150)      NOT NULL,
	fecha_alta           datetime      NOT NULL,
	fecha_baja           datetime      NULL,
	CONSTRAINT pk_materia PRIMARY KEY  ( id_materia ) 
 );
GO

CREATE  TABLE pais ( 
	id_pais int      NOT NULL,
	nombre varchar(50) NOT NULL,
	fecha_alta datetime NOT NULL,
	fecha_baja datetime NULL,
	CONSTRAINT pk_pais PRIMARY KEY ( id_pais ) 
 );
GO

CREATE  TABLE [plan] ( 
	id_plan              int      NOT NULL,
	nombre               varchar(50)      NOT NULL,
	duracion_dias        int      NOT NULL,
	descripcion          varchar(150)      NOT NULL,
	fecha_alta           datetime      NOT NULL,
	fecha_baja           datetime      NULL,
	CONSTRAINT pk_plan PRIMARY KEY  ( id_plan ) 
 );
GO

CREATE  TABLE tipo_producto ( 
	id_tipo_producto     int      NOT NULL,
	nombre               varchar(50)      NOT NULL,
	descripcion          varchar(150)      NOT NULL,
	fecha_alta           datetime      NOT NULL,
	fecha_baja           datetime      NULL,
	CONSTRAINT pk_tipo_de_producto PRIMARY KEY  ( id_tipo_producto ) 
 );
GO

CREATE  TABLE usuario ( 
	id_usuario           int      NOT NULL,
	id_idioma_nativo     int      NOT NULL,
	id_pais              int      NOT NULL,
	nombre               varchar(50)      NOT NULL,
	apellido             varchar(50)      NOT NULL,
	email                varchar(100)      NOT NULL,
	nombre_usuario       varchar(30)      NOT NULL,
	telefono             varchar(25)      NULL,
	fecha_alta           datetime      NOT NULL,
	fecha_nacimiento     date      NOT NULL,
	record_racha         int      NOT NULL DEFAULT 0,
	fecha_baja           datetime      NULL,
	corazones_disponibles int NOT NULL DEFAULT 5
	CONSTRAINT pk_Usuario PRIMARY KEY  ( id_usuario ) 
 );
GO

CREATE  TABLE variacion_precio_plan ( 
	id_variacion_precio_plan int      NOT NULL,
	id_plan              int      NOT NULL,
	precio               decimal(10,2)      NOT NULL,
	fecha_inicio         datetime      NOT NULL,
	fecha_fin            datetime      NULL,
	CONSTRAINT pk_variacion_de_precio PRIMARY KEY  ( id_variacion_precio_plan ) 
 );
GO

CREATE  TABLE curso ( 
	id_curso             int      NOT NULL,
	idioma_base          int      NOT NULL,
	id_materia           int      NOT NULL,
	nombre               varchar(50)      NOT NULL,
	descripcion          varchar(150)      NOT NULL,
	fecha_alta           datetime      NOT NULL,
	fecha_baja           datetime      NULL,
	CONSTRAINT pk_curso PRIMARY KEY  ( id_curso ) 
 );
GO

CREATE  TABLE curso_por_usuario ( 
	id_curso_por_usuario int      NOT NULL,
	id_curso             int      NOT NULL,
	id_usuario           int      NOT NULL,
	progreso_porcentaje  decimal(5,2)      NOT NULL,
	xp_total             int      NOT NULL,
	fecha_inicio         datetime      NOT NULL,
	fecha_ultimo_progreso datetime      NOT NULL,
	fecha_fin            datetime      NULL,
	CONSTRAINT pk_curso_por_usuario PRIMARY KEY  ( id_curso_por_usuario ) 
 );
GO

CREATE  TABLE factura ( 
	id_factura           int      NOT NULL,
	id_usuario           int      NOT NULL,
	fecha_vencimiento                datetime      NOT NULL,
	fecha_emision                datetime      NOT NULL,
	total                decimal(10,2)      NOT NULL,
	CONSTRAINT pk_factura PRIMARY KEY  ( id_factura ) 
 );
GO

CREATE  TABLE grupo_competencia ( 
	id_grupo_competencia int      NOT NULL,
	id_liga              int      NOT NULL,
	fecha_inicio         datetime      NOT NULL,
	fecha_fin            datetime      NOT NULL,
	fecha_alta           datetime      NOT NULL,
	fecha_baja           datetime      NULL,
	cantidad_participantes              int      NOT NULL DEFAULT 0,
	CONSTRAINT pk_grupo_competencia PRIMARY KEY  ( id_grupo_competencia ) 
 );
GO

CREATE  TABLE grupo_competencia_por_usuario ( 
	id_grupo_competencia_por_usuario int      NOT NULL,
	id_usuario           int      NOT NULL,
	id_grupo_competencia int      NOT NULL,
	xp_acumulado_grupo   int      NOT NULL,
	puesto               int      NOT NULL,
	fecha_alta           datetime      NOT NULL,
	fecha_baja           datetime      NULL,
	CONSTRAINT pk_liga_por_usuario PRIMARY KEY  ( id_grupo_competencia_por_usuario ) 
 );
GO

CREATE  TABLE nivel ( 
	id_nivel             int      NOT NULL,
	id_curso             int      NOT NULL,
	nombre               varchar(50)      NOT NULL,
	descripcion          varchar(150)      NOT NULL,
	fecha_alta           datetime      NOT NULL,
	fecha_baja           datetime      NULL,
	CONSTRAINT pk_nivel PRIMARY KEY  ( id_nivel ) 
 );
GO

CREATE  TABLE producto ( 
	id_producto          int      NOT NULL,
	id_tipo_producto     int      NOT NULL,
	nombre               varchar(50)      NOT NULL,
	descripcion          varchar(150)      NOT NULL,
	precio               decimal(10,2)      NOT NULL,
	fecha_alta           datetime      NOT NULL,
	fecha_baja           datetime      NULL,
	CONSTRAINT pk_producto PRIMARY KEY  ( id_producto ) 
 );
GO

CREATE  TABLE suscripcion ( 
	id_suscripcion       int      NOT NULL,
	id_usuario           int      NOT NULL,
	id_plan              int      NOT NULL,
	fecha_inicio         datetime      NOT NULL,
	fecha_fin            datetime      NOT NULL,
	precio               decimal(10,2)      NOT NULL,
	CONSTRAINT pk_suscripcion PRIMARY KEY  ( id_suscripcion ) 
 );
GO

CREATE  TABLE variacion_precio_producto ( 
	id_variacion_precio_producto int      NOT NULL,
	id_producto          int      NOT NULL,
	precio               decimal(10,2)      NOT NULL,
	fecha_inicio         datetime      NOT NULL,
	fecha_fin            datetime      NULL,
	CONSTRAINT pk_variacion_de_precio_producto PRIMARY KEY  ( id_variacion_precio_producto ) 
 );
GO

CREATE  TABLE ejercicio ( 
	id_ejercicio         int      NOT NULL,
	id_nivel             int      NOT NULL,
	tipo                 varchar(50)      NOT NULL,
	pregunta             varchar(250)      NOT NULL,
	xp_otorgado          int      NOT NULL,
	dificultad           varchar(50)      NOT NULL,
	fecha_alta           datetime      NOT NULL,
	fecha_baja           datetime      NULL,
	CONSTRAINT pk_ejercicio PRIMARY KEY  ( id_ejercicio ) 
 );
GO

CREATE  TABLE ejercicio_realizado ( 
	id_ejercicio_realizado int      NOT NULL,
	id_curso_por_usuario int      NOT NULL,
	id_ejercicio         int      NOT NULL,
	fecha                datetime      NOT NULL,
	correcto             bit      NOT NULL,
	xp_ganado            int      NOT NULL,
	CONSTRAINT pk_ejercicio_realizado PRIMARY KEY  ( id_ejercicio_realizado ) 
 );
GO

CREATE  TABLE factura_detalle ( 
	id_factura_detalle   int      NOT NULL,
	id_factura           int      NOT NULL,
	id_suscripcion       int      NULL,
	id_producto          int      NULL,
	cantidad             int      NOT NULL,
	precio_unitario      decimal(10,2)      NOT NULL,
	CONSTRAINT pk_factura_detalle PRIMARY KEY  ( id_factura_detalle ) 
 );
GO

ALTER TABLE curso ADD CONSTRAINT fk_curso_materia FOREIGN KEY ( id_materia ) REFERENCES materia( id_materia );
GO

ALTER TABLE curso ADD CONSTRAINT fk_curso_materia_idioma FOREIGN KEY ( idioma_base ) REFERENCES materia( id_materia );
GO

ALTER TABLE curso_por_usuario ADD CONSTRAINT fk_curso_por_usuario_Usuario FOREIGN KEY ( id_usuario ) REFERENCES usuario( id_usuario );
GO

ALTER TABLE curso_por_usuario ADD CONSTRAINT fk_curso_por_usuario_curso FOREIGN KEY ( id_curso ) REFERENCES curso( id_curso );
GO

ALTER TABLE ejercicio ADD CONSTRAINT fk_ejercicio_nivel_0 FOREIGN KEY ( id_nivel ) REFERENCES nivel( id_nivel );
GO

ALTER TABLE ejercicio_realizado ADD CONSTRAINT fk_ejercicio_realizado_ejercicio FOREIGN KEY ( id_ejercicio ) REFERENCES ejercicio( id_ejercicio );
GO

ALTER TABLE ejercicio_realizado ADD CONSTRAINT fk_ejercicio_realizado_curso_por_usuario FOREIGN KEY ( id_curso_por_usuario ) REFERENCES curso_por_usuario( id_curso_por_usuario );
GO

ALTER TABLE factura ADD CONSTRAINT fk_factura_Usuario FOREIGN KEY ( id_usuario ) REFERENCES usuario( id_usuario );
GO

ALTER TABLE factura_detalle ADD CONSTRAINT fk_factura_detalle_factura FOREIGN KEY ( id_factura ) REFERENCES factura( id_factura );
GO

ALTER TABLE factura_detalle ADD CONSTRAINT fk_factura_detalle_producto FOREIGN KEY ( id_producto ) REFERENCES producto( id_producto );
GO

ALTER TABLE factura_detalle ADD CONSTRAINT fk_factura_detalle_suscripcion FOREIGN KEY ( id_suscripcion ) REFERENCES suscripcion( id_suscripcion );
GO

ALTER TABLE grupo_competencia ADD CONSTRAINT fk_grupo_competencia_liga FOREIGN KEY ( id_liga ) REFERENCES liga( id_liga );
GO

ALTER TABLE grupo_competencia_por_usuario ADD CONSTRAINT fk_liga_por_usuario_Usuario FOREIGN KEY ( id_usuario ) REFERENCES usuario( id_usuario );
GO

ALTER TABLE grupo_competencia_por_usuario ADD CONSTRAINT fk_liga_por_usuario_grupo_competencia FOREIGN KEY ( id_grupo_competencia ) REFERENCES grupo_competencia( id_grupo_competencia );
GO

ALTER TABLE nivel ADD CONSTRAINT fk_nivel_curso FOREIGN KEY ( id_curso ) REFERENCES curso( id_curso );
GO

ALTER TABLE producto ADD CONSTRAINT fk_producto_tipo_de_producto FOREIGN KEY ( id_tipo_producto ) REFERENCES tipo_producto( id_tipo_producto );
GO

ALTER TABLE suscripcion ADD CONSTRAINT fk_suscripcion_Usuario FOREIGN KEY ( id_usuario ) REFERENCES usuario( id_usuario );
GO

ALTER TABLE suscripcion ADD CONSTRAINT fk_suscripcion_plan FOREIGN KEY ( id_plan ) REFERENCES [plan]( id_plan );
GO

ALTER TABLE usuario ADD CONSTRAINT fk_Usuario_materia FOREIGN KEY ( id_idioma_nativo ) REFERENCES materia( id_materia );
GO

ALTER TABLE usuario ADD CONSTRAINT fk_Usuario_pais FOREIGN KEY ( id_pais ) REFERENCES pais( id_pais );
GO

ALTER TABLE variacion_precio_plan ADD CONSTRAINT fk_variacion_de_precio_plan FOREIGN KEY ( id_plan ) REFERENCES [plan]( id_plan );
GO

ALTER TABLE variacion_precio_producto ADD CONSTRAINT fk_variacion_de_precio_producto_producto FOREIGN KEY ( id_producto ) REFERENCES producto( id_producto );
GO
