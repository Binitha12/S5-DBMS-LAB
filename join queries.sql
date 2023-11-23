CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(255),
    department_id INT,
    salary DECIMAL(10, 2)
);

-- Insert sample data into employees table
INSERT INTO employees VALUES (1, 'John Doe', 1, 50000.00);
INSERT INTO employees VALUES (2, 'Jane Smith', 2, 60000.00);
INSERT INTO employees VALUES (3, 'Bob Johnson', 3, 55000.00);
INSERT INTO employees VALUES (4, 'Alice Williams', 2, 62000.00);

-- Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255)
);

-- Insert sample data into departments table
INSERT INTO departments VALUES (1, 'HR');
INSERT INTO departments VALUES (2, 'IT'),
('5','CS');
SELECT * FROM employees;
SELECT * FROM departments;

SELECT * FROM employees
LEFT JOIN departments
ON employees.department_id=departments.department_id;
--all elemnts from left table and only matching from right table
ELECT * FROM employees
RIGHT JOIN departments
ON employees.department_id=departments.department_id;
--all elemnts from right table and only matching from left table

--full join
SELECT * FROM employees
FULL JOIN departments
ON employees.department_id=departments.department_id;
--all elemnts from both tables
