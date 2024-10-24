SELECT *
FROM platzi.alumnos
FETCH FIRST 1 ROW ONLY;

SELECT *
FROM platzi.alumnos
FETCH FIRST 5 ROW ONLY;

SELECT *
FROM platzi.alumnos
LIMIT 1;

SELECT *
FROM platzi.alumnos
LIMIT 5;

SELECT *
FROM  (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos 
) AS alumnos_with_row_num
WHERE row_id = 1
;

SELECT *
FROM  (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos 
) AS alumnos_with_row_num
WHERE row_id BETWEEN 1 AND 5
;

SELECT *
FROM  (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos 
	LIMIT 5
) AS alumnos_with_row_num;

SELECT *
FROM  (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos 
) AS alumnos_with_row_num
WHERE row_id <= 5
;
