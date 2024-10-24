SELECT *
FROM generate_series(1,4);

SELECT *
FROM generate_series(5,1,-2);

SELECT *
FROM generate_series(3,3);

SELECT *
FROM generate_series(4,1,-1);

SELECT *
FROM generate_series(1,6,1.3);

SELECT current_date + s.a AS dates
FROM generate_series(0,14,7) AS s(a);

SELECT *
FROM generate_series('2024-03-20 00:00:00'::timestamp,
					'2024-03-23 12:00:00', '10 hours');
					
SELECT a.id,
	   a.nombre,
	   a.apellido,
	   a.carrera_id,
	   s.a
FROM platzi.alumnos AS a
	INNER JOIN generate_series(0,10) AS s(a)
	ON s.a = a.carrera_id
ORDER BY a.carrera_id;