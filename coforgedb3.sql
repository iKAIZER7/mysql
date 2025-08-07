CREATE DATABASE coforgedb3;

USE coforgedb3;

CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(50),
    budget DECIMAL(12,2)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    hire_date DATE NOT NULL,
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert 5 departments
INSERT INTO departments (department_name, location, budget) VALUES
('Human Resources', 'Floor 1', 500000.00),
('Engineering', 'Floor 2', 1500000.00),
('Marketing', 'Floor 3', 800000.00),
('Finance', 'Floor 4', 1200000.00),
('Operations', 'Floor 5', 900000.00);

-- Insert 10 employees with department assignments
INSERT INTO employees (first_name, last_name, email, hire_date, salary, department_id) VALUES
('John', 'Doe', 'john.doe@company.com', '2020-05-15', 75000.00, 2),
('Jane', 'Smith', 'jane.smith@company.com', '2019-03-10', 82000.00, 1),
('Michael', 'Johnson', 'michael.johnson@company.com', '2021-01-20', 68000.00, 2),
('Emily', 'Williams', 'emily.williams@company.com', '2018-11-05', 92000.00, 3),
('David', 'Brown', 'david.brown@company.com', '2022-02-28', 65000.00, 4),
('Sarah', 'Miller', 'sarah.miller@company.com', '2020-07-12', 78000.00, 2),
('Robert', 'Wilson', 'robert.wilson@company.com', '2019-09-15', 85000.00, 5),
('Jennifer', 'Taylor', 'jennifer.taylor@company.com', '2021-04-01', 72000.00, 3),
('Thomas', 'Anderson', 'thomas.anderson@company.com', '2018-06-22', 95000.00, 4),
('Lisa', 'Martinez', 'lisa.martinez@company.com', '2022-03-10', 70000.00, 1);