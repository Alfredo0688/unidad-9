/*
9.3. Emitir un informe comparativo entre las ventas del a�o 2012 y el a�o 2014. 
El informe debe tener las siguientes columnas: c�digo de t�tulo, titulo, a�o y cantidad de vendida en el a�o 
(cada uno correspondiente al c�digo de t�tulo de la fila correspondiente). 
Tener presente que un t�tulo puede tener ventas en un a�o y no en el otro, en cuyo caso debe aparecer igual en el informe el a�o sin ventas.
Ordenar por t�tulo y a�o.
*/
USE editorial
SELECT T.titulo_id,T.titulo,'2012' AS 'A�O',SUM(V.cantidad) AS 'Cantidad vendida en el a�o'
FROM ventas AS V
INNER JOIN titulos AS T
ON V.titulo_id = T.titulo_id
WHERE YEAR(V.fecha_orden)= '2012'
GROUP BY T.titulo_id,T.titulo
UNION ALL
SELECT T.titulo_id,T.titulo,'2014' AS 'A�O',SUM(V.cantidad) AS 'Cantidad vendida en el a�o'
FROM ventas AS V
INNER JOIN titulos AS T
ON V.titulo_id = T.titulo_id
WHERE YEAR(V.fecha_orden)= '2014'
GROUP BY T.titulo_id,T.titulo







