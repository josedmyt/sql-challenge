CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR);

CREATE TABLE employees(
emp_no INTEGER PRIMARY KEY,
birth_date VARCHAR,
first_Name VARCHAR,
last_Name VARCHAR,
gender VARCHAR,
hire_date VARCHAR);

CREATE TABLE employee_number(
emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no), 
dept_no VARCHAR,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
from_date VARCHAR,
to_date VARCHAR);

CREATE TABLE salaries(
emp_no INTEGER, 
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no), 
salary INTEGER,
from_date VARCHAR,
to_date VARCHAR);

CREATE TABLE titles(
emp_no INTEGER,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
title VARCHAR,
from_date VARCHAR,
to_date VARCHAR);

CREATE TABLE dept_manager(
dept_no VARCHAR,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
emp_no INTEGER,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
from_date VARCHAR,
to_date VARCHAR);
