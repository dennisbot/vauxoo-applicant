-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
drop table IF EXISTS employee;
drop table IF EXISTS employee_hobby;
drop table IF EXISTS employee_department;

CREATE TABLE employee_department (
    id SERIAL PRIMARY KEY,
    name varchar(200),
    description varchar(200)
);

CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(80) NOT NULL,
    id_department int,
    CONSTRAINT fk_employee_dept
    FOREIGN KEY (id_department)
    REFERENCES employee_department(id)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE employee_hobby (
);

-- block of insertion

INSERT INTO employee_department(name, description) values ('Contabilidad y Finanzas', 'Departamento de contabilidad y finanzas');
INSERT INTO employee_department(name, description) values ('Ventas', 'Departamento de ventas');
INSERT INTO employee_department(name, description) values ('Compras', 'Departamento de compras');
INSERT INTO employee_department(name, description) values ('Recursos Humanos', 'Departamento de Recursos Humanos');
INSERT INTO employee_department(name, description) values ('Inventario', 'Departamento de Inventario');
INSERT INTO employee_department(name, description) values ('Ingeniería', 'Departamento de Ingenieria');

INSERT INTO employee(first_name, last_name, id_department) values ('Hugo', 'Cáceres', 1);
INSERT INTO employee(first_name, last_name, id_department) values ('Paco', 'Sarmiento', 1);
INSERT INTO employee(first_name, last_name, id_department) values ('Luis', 'Calderón', 2);
INSERT INTO employee(first_name, last_name, id_department) values ('Rebeca', 'Quijano', 6);

