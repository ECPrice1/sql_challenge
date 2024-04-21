CREATE TABLE departments(
  dept_no VARCHAR(30) PRIMARY KEY,
  dept_name VARCHAR
);

CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30)
);

CREATE TABLE employees(
	emp_no SERIAL PRIMARY KEY,
	emp_title_id VARCHAR(30),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date DATE
);

CREATE TABLE dept_emp(
	emp_no SERIAL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR (30),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(30),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no SERIAL, 
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



CREATE TABLE salaries(
	emp_no SERIAL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT
);

