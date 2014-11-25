-- Database: employee_employee

-- DROP DATABASE employee_employee;

CREATE DATABASE employee_employee
  WITH OWNER = postgres
       ENCODING = 'UTF8'       
       CONNECTION LIMIT = -1;

/*Crea una tabla de "employee" con los campos "id", "first_name", "Last_Name".*/
create table employee(
	id serial not null unique,
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

	
insert into employee(first_name,Last_Name,id_depa) values('Beto','Flores',1);
insert into employee(first_name,Last_Name,id_depa) values('Miguel','Ortiz',2);
insert into employee(first_name,Last_Name,id_depa) values('Andrea','Rocio',3);
insert into employee(first_name,Last_Name,id_depa) values('Hugo','Adan',4);




















 