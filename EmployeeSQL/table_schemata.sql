--Create tables
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	dept_no VARCHAR(255) PRIMARY KEY,
	dept_name VARCHAR(255) NOT NULL 
	);

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	gender char(10) NOT NULL,
	hire_date DATE
	);

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(255) NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	); 
	
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR(255) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR(255) NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
	