SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id IN (1,5,12,32,70,100,1000);

SELECT * 
FROM platzi.alumnos
WHERE id not IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
	
)ORDER BY tutor_id;

----------------------------------------------------------

SELECT EXTRACT(YEAR FROM fecha_incorporacion) AS anio_incorporacion
FROM platzi.alumnos;

SELECT DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion
FROM platzi.alumnos;

SELECT DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion,
		DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion,
		DATE_PART('DAY', fecha_incorporacion) AS dia_incorporacion,
FROM platzi.alumnos order by anio_incorporacion;

SELECT DATE_PART('HOURS', fecha_incorporacion) AS hora_incorporacion,
		DATE_PART('MINUTE', fecha_incorporacion) AS minutos_incorporacion,
		DATE_PART('SECOND', fecha_incorporacion) AS segundos_incorporacion
FROM platzi.alumnos order by HORA_incorporacion;