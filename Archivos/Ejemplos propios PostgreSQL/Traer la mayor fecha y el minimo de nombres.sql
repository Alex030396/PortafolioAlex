SELECT fecha_incorporacion
FROM platzi.alumnos
ORDER BY fecha_incorporacion DESC
LIMIT 1;

SELECT carrera_id, MAX(fecha_incorporacion)
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY carrera_id;

SELECT min(nombre)
FROM platzi.alumnos
GROUP BY nombre
ORDER BY nombre DESC;

SELECT min(tutor_id), nombre
FROM platzi.alumnos
GROUP BY nombre
ORDER BY nombre ;

SELECT tutor_id, min(nombre)
FROM platzi.alumnos
GROUP BY tutor_id
ORDER BY tutor_id;