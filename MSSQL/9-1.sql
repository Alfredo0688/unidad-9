/*
9.1. Informar las ciudades y estado donde residen los autores, las editoriales y los almacenes descartando valores duplicados. Ordenar por nombre de ciudad. 
*/

USE editorial
SELECT A.ciudad,A.estado
FROM autores AS A
UNION
SELECT ED.ciudad,ED.estado
FROM editoriales AS ED
UNION
SELECT AL.ciudad,AL.estado
FROM almacenes AS AL
