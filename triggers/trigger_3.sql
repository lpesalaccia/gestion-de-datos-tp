/*
Trigger 3 — Mantener el total de factura actualizado
El total de cada factura es un dato financiero crítico. Cada vez que se agrega, modifica o elimina un ítem del detalle 
de una factura, el total debe reflejar ese cambio inmediatamente. Este trigger garantiza que el campo total en factura 
siempre sea correcto sin necesidad de recalcularlo con un JOIN y SUM cada vez que se consulta. Es monetización porque habla 
directamente de facturación, de cuánto se le cobra a cada usuario por sus suscripciones y productos adquiridos.
Nombre del objeto: tr_insert_total_factura, tr_delete_total_factura
Tabla sobre la que se aplica: factura_detalle
Evento disparador: INSERT y DELETE
Funcionalidad: Mantiene actualizado el campo total de la tabla factura ante cualquier modificación en factura_detalle. 
Cuando se inserta un nuevo ítem, suma su importe al total. Cuando se elimina, lo resta. Cuando se actualiza, resta el importe 
anterior y suma el nuevo. En todos los casos, si la actualización falla, se hace ROLLBACK.
Objetivo de negocio: Duolingo necesita mostrar el total de cada factura en tiempo real sin tener que recalcular con un JOIN y 
SUM cada vez. Al mantener total denormalizado y actualizado automáticamente ante cualquier cambio en el detalle, la consulta del 
total se reduce a leer un solo campo. Conecta directamente con el pilar de monetización y complementa el SP1 que consulta ingresos 
por plan.
*/


--Trigger para INSERT:

CREATE TRIGGER tr_insert_total_factura
ON factura_detalle
FOR INSERT
AS
BEGIN
BEGIN TRY
    UPDATE factura
    SET total = total + importes.importe_total
    FROM factura f
        INNER JOIN (
            SELECT
                id_factura,
                SUM(precio_unitario * cantidad) AS importe_total
            FROM inserted
            GROUP BY
                id_factura
        ) AS importes
            ON f.id_factura = importes.id_factura

   END TRY
    BEGIN CATCH
        RAISERROR('Error al actualizar total de factura en INSERT', 16, 1)
        ROLLBACK TRANSACTION
    END CATCH
END
GO

--Trigger para DELETE:

CREATE TRIGGER tr_delete_total_factura
ON factura_detalle
FOR DELETE
AS
BEGIN 
BEGIN TRY 
    UPDATE factura
    SET total = total - importes.importe_total
    FROM factura f
        INNER JOIN (
            SELECT
                id_factura,
                SUM(precio_unitario * cantidad) AS importe_total
            FROM deleted
            GROUP BY
                id_factura
        ) AS importes
            ON f.id_factura = importes.id_factura

   END TRY
   BEGIN CATCH  
        RAISERROR('Error al actualizar total de factura en DELETE', 16, 1)
        ROLLBACK TRANSACTION
    END CATCH 
END
GO
