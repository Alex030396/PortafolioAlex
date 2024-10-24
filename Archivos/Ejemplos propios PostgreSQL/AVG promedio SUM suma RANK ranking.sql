SELECT *,
		AVG(colegiatura) OVER(PARTITION BY carrera_id)
FROM platzi.alumnos;

SELECT *,
		AVG(colegiatura) OVER()
FROM platzi.alumnos;

SELECT *,
		SUM(colegiatura) OVER(ORDER BY colegiatura)
FROM platzi.alumnos;

SELECT *,
		SUM(colegiatura) OVER(PARTITION BY carrera_id ORDER BY colegiatura)
FROM platzi.alumnos;

SELECT *,
		RANK() 
		OVER(PARTITION BY carrera_id 
			 ORDER BY colegiatura DESC) 
FROM platzi.alumnos;


SELECT *,
		RANK() 
		OVER(PARTITION BY carrera_id 
			 ORDER BY colegiatura DESC) AS RANKING
FROM platzi.alumnos
ORDER BY COLEGIATURA DESC, RANKING;

SELECT *
FROM (
		SELECT *, 
		RANK() 
		OVER(PARTITION BY carrera_id 
			 ORDER BY colegiatura DESC) AS RANKING
		FROM platzi.alumnos
	) AS range_colegiaturas
WHERE ranking <3
ORDER BY RANKING;