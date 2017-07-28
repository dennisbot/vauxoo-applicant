-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
drop table IF EXISTS employee_hobby_employee;
drop table IF EXISTS employee_hobby;
drop table IF EXISTS employee;
drop table IF EXISTS employee_department;

CREATE TABLE employee_department (
    id SERIAL PRIMARY KEY,
    name varchar(200),
    description varchar(200)
);

CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    id_jefe int NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(80) NOT NULL,
    id_department int,
    CONSTRAINT fk_employee_dept
    FOREIGN KEY (id_department)
    REFERENCES employee_department(id)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_jefe
    FOREIGN KEY (id_jefe)
    REFERENCES employee(id)
    ON DELETE RESTRICT ON UPDATE CASCADE

);

CREATE TABLE employee_hobby (
    id SERIAL PRIMARY KEY,
    name varchar(80),
    description varchar(800)
);

CREATE TABLE employee_hobby_employee (
    id_employee int,
    id_hobby int,
    CONSTRAINT employee_hobby_pk PRIMARY KEY (id_employee, id_hobby),
    CONSTRAINT employee_fk FOREIGN KEY (id_employee)
    REFERENCES employee(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT hobby_fk FOREIGN KEY (id_hobby)
    REFERENCES employee_hobby(id) ON DELETE RESTRICT ON UPDATE CASCADE
);


-- block of insertion

INSERT INTO employee_department(name, description) values ('Contabilidad y Finanzas', 'Departamento de contabilidad y finanzas');
INSERT INTO employee_department(name, description) values ('Ventas', 'Departamento de ventas');
INSERT INTO employee_department(name, description) values ('Compras', 'Departamento de compras');
INSERT INTO employee_department(name, description) values ('Recursos Humanos', 'Departamento de Recursos Humanos');
INSERT INTO employee_department(name, description) values ('Inventario', 'Departamento de Inventario');
INSERT INTO employee_department(name, description) values ('Ingeniería', 'Departamento de Ingenieria');

INSERT INTO employee(first_name, last_name, id_department, id_jefe) values ('Hugo', 'Cáceres', 1, NULL);
INSERT INTO employee(first_name, last_name, id_department, id_jefe) values ('Paco', 'Sarmiento', 1, 1);
INSERT INTO employee(first_name, last_name, id_department, id_jefe) values ('Luis', 'Calderón', 2, 1);
INSERT INTO employee(first_name, last_name, id_department, id_jefe) values ('Rebeca', 'Quijano', 6, 1);

INSERT INTO employee_hobby(name, description) values ('Cocina', 'gusto por la cocina, preparar platos, postres, ceviche, etc');
INSERT INTO employee_hobby(name, description) values ('Karaoke', 'canto, imitación, interpretación a tus artistas favoritos');
INSERT INTO employee_hobby(name, description) values ('Video Games', 'Juegos de video');


INSERT INTO employee_hobby_employee(id_employee, id_hobby) values (1, 1);
INSERT INTO employee_hobby_employee(id_employee, id_hobby) values (1, 2);

INSERT INTO employee_hobby_employee(id_employee, id_hobby) values (2, 2);
INSERT INTO employee_hobby_employee(id_employee, id_hobby) values (2, 3);

INSERT INTO employee_hobby_employee(id_employee, id_hobby) values (3, 1);
INSERT INTO employee_hobby_employee(id_employee, id_hobby) values (3, 3);

INSERT INTO employee_hobby_employee(id_employee, id_hobby) values (4, 1);
INSERT INTO employee_hobby_employee(id_employee, id_hobby) values (4, 2);
INSERT INTO employee_hobby_employee(id_employee, id_hobby) values (4, 3);


