-- Database: employee_employee

-- DROP DATABASE employee_employee;

CREATE DATABASE employee_employee
  WITH OWNER = postgres
       ENCODING = 'UTF8'       
       CONNECTION LIMIT = -1;

/*Crea una tabla de "employee" con los campos "id", "first_name", "Last_Name".*/
create table employee(
	id integer not null,
	first_name text not null,
	Last_Name text not null
	id_depa integer not null,
	constraint pk_employee_id primary key (id));
	
	
/*Crea una tabla "employee_departament" con los campos "id", "name", "description" */
create table employee_departament(
	id integer not null unique,
	name text not null,
	description text,
	constraint pk_employee_departament_id primary key (id));
	
ALTER TABLE employee  ADD  CONSTRAINT FK_employee_employee_departament FOREIGN KEY(id_depa)
REFERENCES employee_departament (id)

/* Inserta 4 empleados y 6 departamentos de datos, asígnale a los empleados un departamento.*/

insert into employee_departament(name,description) values(1,'Sistemas','sistemas computacionales');
insert into employee_departament(name,description) values(2,'Gestion','Gestion y vinculacion');
insert into employee_departament(name,description) values(3,'DH','Desarrollo Humano');
insert into employee_departament(name,description) values(4,'Materiales','Recursos Materiales');
insert into employee_departament(name,description) values(5,'Escolares','Servicios Escolares');
insert into employee_departament(name,description) values(6,'Electro','Departamento de Electro');

	
insert into employee(id,first_name,Last_Name,id_depa) values(1,'Beto','Flores',1);
insert into employee(id,first_name,Last_Name,id_depa) values(2,'Miguel','Ortiz',2);
insert into employee(id,first_name,Last_Name,id_depa) values(3,'Andrea','Rocio',3);
insert into employee(id,first_name,Last_Name,id_depa) values(4,'Hugo','Adan',4);

/*Crea una tabla llamada "employee_hobby" con los campos "id", "name", "description". */
create table employee_hobby(
	id integer not null,
	name text,
	description text,
	constraint pk_employee_hobby primary key (id));

create table hobbyXemployee(
	id_employee integer not null,
	id_hobby integer not null);

insert into employee_hobby(id,name,description) values (1,'Futbol','Tardes de fucho');
insert into employee_hobby(id,name,description) values (2,'Leer','Un libro por la noche');
insert into employee_hobby(id,name,description) values (3,'Correr','Trotar por las mañanas');

insert into hobbyXemployee (id_employee,id_hobby) values (1,2);
insert into hobbyXemployee (id_employee,id_hobby) values (1,3);

insert into hobbyXemployee (id_employee,id_hobby) values (2,1);
insert into hobbyXemployee (id_employee,id_hobby) values (2,2);

insert into hobbyXemployee (id_employee,id_hobby) values (3,1);
insert into hobbyXemployee (id_employee,id_hobby) values (3,3);

insert into hobbyXemployee (id_employee,id_hobby) values (4,1);
insert into hobbyXemployee (id_employee,id_hobby) values (4,2);


/*Haz los cambios necesarios en la base de datos para poder asignar a los empleados un jefe.
Un jefe, es también un empleado. 
Un empleado solo puede tener un jefe. 
Y un jefe puede tener muchos empleados. */
 create table boss (
	id_boss integer not null),
	constraint pk_boss primary key (id_boss));
	
ALTER TABLE employee ADD COLUMN id_boss integer;

ALTER TABLE boss ADD  CONSTRAINT FK_Boss_employee FOREIGN KEY([id_boss])
REFERENCES employee (id);

ALTER TABLE employee  ADD  CONSTRAINT FK_employee_boss FOREIGN KEY(id_boss)
REFERENCES boss (id_boss)

--UPDATE films SET kind = 'Dramatic' WHERE kind = 'Drama';
insert into boss(id_boss) values (1);
insert into boss(id_boss) values (2);


update employee set id_boss =2 where id = 3;
update employee set id_boss =1 where id = 4;
update employee set id_boss =2 where id = 1;
update employee set id_boss =1 where id = 2;














 
 