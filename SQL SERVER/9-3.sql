/*
9.3. Emitir un informe comparativo entre las ventas del año 2012 y el año 2014. 
El informe debe tener las siguientes columnas: código de título, titulo, año y cantidad de vendida en el año 
(cada uno correspondiente al código de título de la fila correspondiente). 
Tener presente que un título puede tener ventas en un año y no en el otro, en cuyo caso debe aparecer igual en el informe el año sin ventas.
Ordenar por título y año.
*/
USE editorial
SELECT T.titulo_id,T.titulo,'2012' AS 'AÑO',SUM(V.cantidad) AS 'Cantidad vendida en el año'
FROM ventas AS V
INNER JOIN titulos AS T
ON V.titulo_id = T.titulo_id
WHERE YEAR(V.fecha_orden)= '2012'
GROUP BY T.titulo_id,T.titulo
UNION ALL
SELECT T.titulo_id,T.titulo,'2014' AS 'AÑO',SUM(V.cantidad) AS 'Cantidad vendida en el año'
FROM ventas AS V
INNER JOIN titulos AS T
ON V.titulo_id = T.titulo_id
WHERE YEAR(V.fecha_orden)= '2014'
GROUP BY T.titulo_id,T.titulo







