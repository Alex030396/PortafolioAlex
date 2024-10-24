SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
	LEfT JOIN  platzi.carreras AS c
	ON a.carrera_id = c.id
WHERE c.id IS NULL;

SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
	LEfT JOIN  platzi.carreras AS c
	ON a.carrera_id = c.id
ORDER BY c.id DESC;

SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
	RIGHT JOIN  platzi.carreras AS c
	ON a.carrera_id = c.id
ORDER BY c.id DESC;

SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
	RIGHT JOIN  platzi.carreras AS c
	ON a.carrera_id = c.id
WHERE a.id IS NULL
ORDER BY c.id DESC;

SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
	INNER JOIN  platzi.carreras AS c
	ON a.carrera_id = c.id
ORDER BY c.id DESC;

SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
	FULL OUTER JOIN  platzi.carreras AS c
	ON a.carrera_id = c.id
where a.id is null or c.id is null
ORDER BY a.carrera_id DESC, c.id DESC;