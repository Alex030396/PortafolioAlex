SELECT EXTRACT:

SELECT * FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2020;

SELECT * FROM platzi.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion)) = 2017;

SELECT *
FROM (
	SELECT *,
		DATE_PART('YEAR', fecha_incorporacion) AS ano_incorporacion
	FROM platzi.alumnos
) AS alumnos_con_ano
WHERE ano_incorporacion = 2020;
;

SELECT *
FROM (
	SELECT *, 
		DATE_PART('YEAR', fecha_incorporacion) AS ano_incorporacion,
		DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion
	FROM platzi.alumnos
) AS lista_de_alumnos
WHERE ano_incorporacion = 2018 and mes_incorporacion = 8;

SELECT * FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2018 AND
		(EXTRACT(MONTH FROM fecha_incorporacion)) = 8;