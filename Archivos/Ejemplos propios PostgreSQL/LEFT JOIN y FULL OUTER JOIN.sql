SELECT carreRa_id, COUNT(*) AS cuenta
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY cuenta DESC;

DELETE FROM platzi.carreras
WHERE id BETWEEN 30 AND 40;

SELECT a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM 	platzi.alumnos AS a
	LEFT JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
WHERE c.id IS NULL
ORDER BY a.carrera_id;

SELECT a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM 	platzi.alumnos AS a
	LEFT JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
WHERE a.carrera_id >= 1 
ORDER BY a.carrera_id;

SELECT a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM 	platzi.alumnos AS a
	full outer JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
ORDER BY a.carrera_id;