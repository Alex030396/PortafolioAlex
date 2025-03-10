SELECT *
FROM platzi.alumnos
WHERE tutor_id IN (1,2);

SELECT *
FROM platzi.alumnos
WHERE tutor_id >= 1
	AND tutor_id <=5;
	
SELECT *
FROM platzi.alumnos
WHERE tutor_id BETWEEN 1 AND 5;	

SELECT int4range(10,20) @> 11;

SELECT numrange (11.1,22.2) && numrange (20.0, 30.0); 

SELECT UPPER(int8range(15,25));
SELECT LOWER(int8range(15,25));
SELECT int4range(10, 20) * int4range(15,25);
SELECT ISEMPTY(numrange(1,1));

SELECT *
FROM platzi.alumnos
WHERE int4range(17,20) @> tutor_id;

SELECT numrange(
	(SELECT min(tutor_id) FROM platzi.alumnos),
	(SELECT max(tutor_id) FROM platzi.alumnos)
) * numrange (
	(SELECT MIN(carrera_id) FROM platzi.alumnos),
	(SELECT MAX(carrera_id) FROM platzi.alumnos)
);