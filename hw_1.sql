-- Table for departments
CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no INTEGER
);

CREATE TABLE salaries (
    emp_no INTEGER PRIMARY KEY REFERENCES Employees(emp_no),
    salary INTEGER
);

CREATE TABLE titles (
    emp_title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(50)
);


CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    hire_date DATE
);