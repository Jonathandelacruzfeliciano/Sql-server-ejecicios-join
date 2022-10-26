CREATE DATABASE PrueJoin
drop database PrueJoin


USE prueJoin


CREATE TABLE Departamentos
(
    Id int,
    Nombre varchar(20)
);

CREATE TABLE Empleados
(
    Nombre varchar(20),
    DepartamentoId int
);

INSERT INTO Departamentos VALUES(31, 'Progamadores');
INSERT INTO Departamentos VALUES(33, 'Ingenieros');
INSERT INTO Departamentos VALUES(34, 'QA');
INSERT INTO Departamentos VALUES(35, 'Negocios de mercado');

INSERT INTO Empleados VALUES('Rafferty', 31);
INSERT INTO Empleados VALUES('Jones', 33);
INSERT INTO Empleados VALUES('Heisenberg', 33);
INSERT INTO Empleados VALUES('Robinson', 34);
INSERT INTO Empleados VALUES('Smith', 34);
INSERT INTO Empleados VALUES('Williams', NULL);

SELECT * FROM Empleados;
SELECT * FROM Departamentos;

select * from
Departamentos as pt
join Empleados as ep
on pt.Id = ep.DepartamentoId

select 
pt.Nombre as 'Nombre de departamento',
isnull(ep.Nombre, 'sin departamento') as 'nombre de empleado' ---isnull le asigno que me nuestre el campo sin departamento

 from
Departamentos pt 
left join Empleados ep
on pt.Id = ep.DepartamentoId

select 
emp.Nombre as 'Nombre de emplado',
isnull(dpt.Nombre, 'sin departamento') as 'nombre de departamento'

 from Empleados emp 
left join Departamentos dpt 
on emp.DepartamentoId = dpt.Id
where  emp.DepartamentoId is null ---  Con la condicion where muestro lo que no complen con tener un empleado


---inner join a empleado y departamento donde solo muestra la información que estan conectada con el ID .

select 
* from Empleados Emp
join Departamentos dpt
on emp.DepartamentoId =dpt.Id

select 
* from Empleados Emp
left join Departamentos dpt --- el left join parte desde la parte izquierda a comparar con lo de la derecha.
on emp.DepartamentoId =dpt.Id 

select 
* from Empleados Emp
right join Departamentos dpt ---- el right join parte desde la parte derecha y compara las igualdades es decir que lo puede mastrar
---- lo que esta en la parte derecha pero mostrando vacio lo que este en la parte izquierda.
on emp.DepartamentoId =dpt.Id


select 
* from Empleados emp
full join Departamentos dpt  --- muetra todo lo que esta en la tabla emplado como tambien la tabla departamento.
on emp.DepartamentoId = dpt.Id

