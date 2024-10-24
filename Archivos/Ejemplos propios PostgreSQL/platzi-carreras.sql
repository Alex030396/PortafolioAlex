select * from platzi.alumnos order by tutor_id;
select * from platzi.carreras ;
select * from platzi.carreras where carrera like '%dato%';
select count(id) from platzi.carreras;
select count(id) from platzi.alumnos;


select * from platzi.carreras
join platzi.alumnos on (alumnos.carrera_id = carreras.id)
where carreras.id = 23;

select count(*) from platzi.alumnos where apellido is null;

select * from platzi.carreras OFFSET 5 LIMIT 1;

select id, tutor_id, colegiatura from platzi.alumnos 
where tutor_id = 21 order by colegiatura desc;

select distinct nombre
from platzi.alumnos as name_1
inner join (
	select *
	from platzi.alumnos
) as name_2
on name_1.nombre = name_2.nombre;

SELECT nombre, COUNT(*) AS cantidad
FROM platzi.alumnos
GROUP BY nombre
HAVING COUNT(*) > 1
ORDER BY nombre;

select *
from platzi.alumnos as name_1
inner join (
	SELECT nombre, COUNT(*) AS cantidad
	FROM platzi.alumnos
	GROUP BY nombre 
	HAVING COUNT(*) > 1	
) as name_2
on name_1.nombre = name_2.nombre;

select * from platzi.alumnos where nombre = 'Andrea';

