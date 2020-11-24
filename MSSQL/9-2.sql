/*
9.2. Informar cuantos t�tulos se han publicado primer semestre del 2011 y en el primer semestre del 2017. 
Mostrar dos columnas y dos filas: en la primera columna la descripci�n del periodo y en la segunda la cantidad de t�tulos. 
*/
USE editorial
SELECT 'Primer semestre 2011' AS 'Columna', COUNT(T.titulo_id) AS 'Titulos publicados'
FROM titulos AS T
WHERE T.fecha_publicacion BETWEEN '20110101' AND '20110630'
UNION
SELECT 'Primer semestre 2017' AS 'Columna', COUNT(T.titulo_id)
FROM titulos AS T
WHERE T.fecha_publicacion BETWEEN '20170101' AND '20170630'

