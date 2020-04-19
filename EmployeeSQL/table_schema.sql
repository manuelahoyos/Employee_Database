CREATE TABLE department (
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
);

CREATE TABLE employees (
emp_no INTEGER NOT NULL,
birth_date DATE NOT NUll,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
gender VARCHAR NOT NULL,
hire_date DATE NOT NULL,	
PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL,
emp_no INTEGER NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,	
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
emp_no INTEGER NOT NULL,
salary INTEGER NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (emp_no,salary)
);

CREATE TABLE titles (
emp_no INTEGER NOT NULL,
title VARCHAR NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (emp_no,from_date)
);

CREATE TABLE dept_emp (
emp_no INTEGER NOT NULL,
dept_no VARCHAR NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,	
FOREIGN KEY (dept_no) REFERENCES department(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (emp_no,dept_no)
);

***IMPORT CVS FILES

SELECT * FROM department;
SELECT * FROM employees;
SELECT * FROM dept_management;
SELECT * FROM salaries;
SELECT * FROM titles;
SELECT * FROM dept_emp;