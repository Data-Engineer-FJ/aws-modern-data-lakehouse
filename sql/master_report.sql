/* 📊 REPORTE DE VENTAS CONSOLIDADO (VERSIÓN CORREGIDA) */
SELECT 
    v.nombre_vendedor, 
    c.nombre_cliente AS cliente, 
    p.nombre AS producto, 
    cat.nombre_categoria AS categoria,
    vt.cantidad,
    p.precio,
    (vt.cantidad * p.precio) AS total_venta_usd,
    vt.fecha
FROM "db_lakehouse_engineer"."ventas" vt
JOIN "db_lakehouse_engineer"."productos" p    ON vt.id_producto = p.id_producto
JOIN "db_lakehouse_engineer"."vendedores" v   ON vt.id_vendedor = v.id_vendedor
JOIN "db_lakehouse_engineer"."clientes" c     ON vt.id_cliente = c.id_cliente
JOIN "db_lakehouse_engineer"."categorias" cat ON p.id_categoria = cat.id_categoria
ORDER BY vt.fecha DESC;