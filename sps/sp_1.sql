/*
SP1 — Ingreso acumulado por plan
Este procedure responde directamente a una necesidad financiera: saber cuánto dinero generó 
un plan específico durante un periodo determinado. No tiene ninguna relación con el comportamiento del usuario dentro de la app, 
sino con los ingresos que ese plan produjo. Es una herramienta para el equipo financiero que toma decisiones sobre qué planes mantener, 
modificar o discontinuar según su rentabilidad en un periodo determinado. Es parte del pilar de monetización.

Descripción:

Operatoria y resultado: Recibe como parámetro de entrada el ID de un plan específico y devuelve como parámetro de salida 
el ingreso total facturado asociado a las suscripciones de ese plan. Para calcularlo, parte de la tabla plan, la relaciona con 
suscripción y luego con factura_detalle, sumando el importe de cada detalle correspondiente. Si el plan no registra ingresos facturados, 
devuelve 0.

Propósito y utilidad: Le permite al equipo financiero consultar de forma rápida cuánto ingreso facturado se encuentra asociado a un 
plan determinado. Al devolver el valor mediante un parámetro OUTPUT, el resultado puede ser utilizado por otros procesos o reportes 
sin necesidad de interpretar un listado completo.

*/

CREATE PROCEDURE sp_ingreso_acumulado_por_plan
    @id_plan        INT,
    @fecha_inicio   DATE,    
    @fecha_fin      DATE,    
    @ingreso_total  DECIMAL(10,2) OUTPUT
AS
BEGIN
    SELECT
        @ingreso_total = ISNULL(
            SUM(fd.precio_unitario * fd.cantidad),
            0
        )
    FROM [plan] p
        LEFT JOIN suscripcion s
            ON p.id_plan = s.id_plan
        LEFT JOIN factura_detalle fd
            ON s.id_suscripcion = fd.id_suscripcion
        LEFT JOIN factura f
            ON fd.id_factura = f.id_factura
    WHERE
        p.id_plan = @id_plan
        AND p.fecha_baja IS NULL
        AND f.fecha_emision BETWEEN @fecha_inicio AND @fecha_fin

    IF @@error != 0
    BEGIN
        RAISERROR('Error al ejecutar sp_ingreso_acumulado_por_plan', 16, 1)
    END
END
GO
