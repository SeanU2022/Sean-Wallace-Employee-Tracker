DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE job_role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL,
  department_id INT, 
  FOREIGN KEY (department_id)
  REFERENCES department(id)
  ON DELETE SET NULL
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  job_role_id INT,
  FOREIGN KEY (job_role_id)
  REFERENCES job_role(id)
  ON DELETE SET NULL,
  manager_id INT
);

-- seeds
INSERT INTO department (name)
VALUES  ('Sales'), 
        ('Engineering'), 
        ('Finance'), 
        ('Service'), 
        ('Legal');

INSERT INTO job_role (title, salary, department_id)
VALUES ('Sales Person', 50000, 1),
       ('Sales Manager', 55000, 1),
       ('Engineer', 40000, 2),
       ('Senior Engineer', 44000, 2),
       ('Book Keeper', 30000, 3), 
       ('Accountant', 33000, 3), 
       ('Technician', 66000, 4), 
       ('Service Manager', 70000, 4), 
       ('Lawyer', 100000, 5);

INSERT INTO employee (first_name, last_name, job_role_id, manager_id)
VALUES ('Jack', 'Quinn', 1, 2),
('Lily', 'Rowan', 1, 2),
('Violet', 'Coleman', 1, 2),
('Harper', 'Duncan', 1, 2),
('Carter', 'Hutton', 1, 2),
('William', 'Gibbs', 2, 19),
('Daniel', 'Stone', 3, 4),
('Scarlett', 'Dixon', 3, 4),
('Eleanor', 'Addison', 3, 4),
('Leo', 'Cohen', 4, 19),
('Lucas', 'Parker', 5, 6),
('Sophia', 'Channing', 6, 19),
('Stella', 'Bellamy', 7, 8),
('Penelope', 'Adler', 7, 8),
('James', 'Delaney', 7, 8),
('Lincoln', 'Everly', 7, 8),
('Matthew', 'Davis', 7, 8),
('Michael', 'Luna', 8, 19),
('Paisley', 'Hepburn', 9, NULL);

SHOW TABLES;

SELECT * FROM department;
SELECT * FROM job_role;
SELECT * FROM employee;