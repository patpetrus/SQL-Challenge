--SCHEMA LETS DO THIS

drop table departments;

CREATE TABLE departments (
--id SERIAL PRIMARY KEY,
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL
);

INSERT INTO departments (dept_no, dept_name)
VALUES
('d001', 'Marketing'),
('d002', 'Finance'),
('d003', 'Human Resources'),
('d004', 'Production'),
('d005',	'Development'),
('d006',	'Quality Management'),
('d007',	'Sales'),
('d008',	'Research'),
('d009',	'Customer Service');

SELECT * FROM departments

SELECT * FROM dept_emp;

CREATE TABLE dept_emp (
--id SERIAL PRIMARY KEY,
emp_no VARCHAR NOT NULL,
dept_no VARCHAR NOT NULL
--FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

drop table dept_manager;

CREATE TABLE dept_manager (
--id SERIAL PRIMARY KEY,
emp_no VARCHAR NOT NULL,
dept_no VARCHAR NOT NULL
--FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

INSERT INTO dept_manager (dept_no, emp_no)
VALUES
('d001', '110022'),
('d001', '110039'),
('d002', '110085'),
('d002', '110114'),
('d003', '110183'),
('d003', '110228'),
('d004', '110303'),
('d004', '110344'),
('d004', '110386'),
('d004', '110420'),
('d005', '110511'),
('d005', '110567'),
('d006', '110725'),
('d006', '110765'),
('d006', '110800'),
('d006', '110854'),
('d007', '111035'),
('d007', '111133'),
('d008', '111400'),
('d008', '111534'),
('d009', '111692'),
('d009', '111784'),
('d009', '111877'),
('d009', '111939');

SELECT * FROM dept_manager;

drop table employees; 

CREATE TABLE employees (
--id SERIAL PRIMARY KEY,
emp_no VARCHAR NOT NULL,
--FOREIGN KEY (emp_no) REFERENCES dept_manager(emp_no) & REFERENCES (emp_no),
    --almost certain the above foreign key syntax is wrong... gg
emp_title_id VARCHAR NOT NULL,
birth_date VARCHAR NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date VARCHAR NOT NULL
);

SELECT * FROM employees;

CREATE TABLE salaries (
--id SERIAL PRIMARY KEY,
emp_no VARCHAR NOT NULL,
salary INT
);

select * from salaries;

drop table titles;

CREATE TABLE titles (
--id SERIAL PRIMARY KEY,
title_id VARCHAR NOT NULL,
--FOREIGN KEY (title_id) REFERENCES employees(emp_title_id),
title VARCHAR NOT NULL
);

SELECT * FROM titles;

