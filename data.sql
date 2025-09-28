-- DB Script: Insert Initial Data
-- Creates 3 Departments and 25 Employees to meet the minimum requirement.

-- 1. Insert Departments (Minimum 3)
INSERT INTO department (id, name, creation_date, head_employee_id) VALUES (101, 'Engineering', '2020-01-15', NULL);
INSERT INTO department (id, name, creation_date, head_employee_id) VALUES (102, 'Human Resources', '2019-05-20', NULL);
INSERT INTO department (id, name, creation_date, head_employee_id) VALUES (103, 'Sales', '2021-03-10', NULL);

-- 2. Insert Employees (Minimum 25)
-- Emp 1: CEO (Top Level Employee, manager_id is NULL)
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) 
VALUES (1, 'CEO Alpha', '1975-01-01', 250000.00, 'HQ Address', 'CEO', '2015-01-01', 0.20, 101, NULL); 

-- Emp 2: Manager (Reports to CEO)
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) 
VALUES (2, 'Eng Lead Bob', '1980-05-10', 150000.00, 'Eng Office', 'Engineering Manager', '2016-03-01', 0.15, 101, 1); 

-- Emp 3: Manager (Reports to CEO)
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) 
VALUES (3, 'HR Lead Cathy', '1982-08-20', 130000.00, 'HR Office', 'HR Manager', '2017-06-15', 0.15, 102, 1);

-- Emp 4-15 (12 employees) report to Emp 2 (Engineering)
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (4, 'Dev Dave', '1990-01-01', 80000.00, 'Desk A', 'Developer', '2018-01-01', 0.10, 101, 2);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (5, 'Dev Erica', '1991-02-01', 85000.00, 'Desk B', 'Developer', '2018-03-01', 0.10, 101, 2);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (6, 'Dev Frank', '1992-03-01', 90000.00, 'Desk C', 'Sr. Developer', '2017-05-01', 0.12, 101, 2);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (7, 'QA Grace', '1993-04-01', 75000.00, 'Desk D', 'QA Analyst', '2019-07-01', 0.10, 101, 2);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (8, 'Lead Henry', '1994-05-01', 95000.00, 'Desk E', 'Tech Lead', '2016-09-01', 0.15, 101, 2);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (9, 'Dev Ivy', '1995-06-01', 80000.00, 'Desk F', 'Developer', '2020-01-01', 0.10, 101, 2);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (10, 'Dev Jack', '1996-07-01', 85000.00, 'Desk G', 'Developer', '2020-03-01', 0.10, 101, 2);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (11, 'QA Kelly', '1997-08-01', 75000.00, 'Desk H', 'QA Analyst', '2021-05-01', 0.10, 101, 2);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (12, 'Dev Leo', '1998-09-01', 90000.00, 'Desk I', 'Sr. Developer', '2017-08-01', 0.12, 101, 2);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (13, 'Dev Mia', '1999-10-01', 80000.00, 'Desk J', 'Developer', '2022-01-01', 0.10, 101, 2);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (14, 'Dev Noah', '2000-11-01', 85000.00, 'Desk K', 'Developer', '2022-03-01', 0.10, 101, 2);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (15, 'QA Olivia', '2001-12-01', 75000.00, 'Desk L', 'QA Analyst', '2023-05-01', 0.10, 101, 2);

-- Emp 16-20 (5 employees) report to Emp 3 (HR)
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (16, 'HR Pat', '1990-01-15', 70000.00, 'HR Desk 1', 'HR Specialist', '2019-01-15', 0.08, 102, 3);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (17, 'HR Quin', '1991-03-25', 72000.00, 'HR Desk 2', 'Recruiter', '2020-02-01', 0.08, 102, 3);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (18, 'HR Ray', '1992-06-05', 71000.00, 'HR Desk 3', 'HR Generalist', '2021-04-01', 0.08, 102, 3);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (19, 'HR Sara', '1993-09-15', 73000.00, 'HR Desk 4', 'HR Specialist', '2022-06-01', 0.08, 102, 3);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (20, 'HR Tom', '1994-12-25', 74000.00, 'HR Desk 5', 'Recruiter', '2023-08-01', 0.08, 102, 3);

-- Emp 21-25 (5 employees) report to Emp 1 (CEO) or a new manager
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (21, 'Sales Vic', '1985-02-02', 100000.00, 'Sales Rm', 'Sales Manager', '2016-10-01', 0.30, 103, 1);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (22, 'Sales Will', '1986-04-12', 90000.00, 'Sales 1', 'Account Executive', '2017-11-01', 0.25, 103, 21);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (23, 'Sales Xav', '1987-06-22', 95000.00, 'Sales 2', 'Account Executive', '2018-12-01', 0.25, 103, 21);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (24, 'Sales Yana', '1988-08-30', 92000.00, 'Sales 3', 'Sales Rep', '2019-10-01', 0.20, 103, 21);
INSERT INTO employee (id, name, date_of_birth, salary, address, role, joining_date, yearly_bonus_percentage, department_id, manager_id) VALUES (25, 'Sales Zoe', '1989-10-10', 91000.00, 'Sales 4', 'Sales Rep', '2020-11-01', 0.20, 103, 21);

-- 3. Update Department Heads (must be an existing employee)
-- Engineering Head: Emp 2
-- HR Head: Emp 3
-- Sales Head: Emp 21
UPDATE department SET head_employee_id = 2 WHERE id = 101;
UPDATE department SET head_employee_id = 3 WHERE id = 102;
UPDATE department SET head_employee_id = 21 WHERE id = 103;
