create database CLASS_ACTIVITY;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    job_title VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employee (emp_id, job_title, salary)
VALUES
(1, 'Software Engineer', 75000.00),
(2,'Data Analyst', 60000.00),
(3,'Project Manager', 90000.00),
(4, 'HR Specialist', 55000.00),
(5, 'Database Administrator', 80000.00);

select * from employee;

ALTER TABLE employee
ADD department_no INT;

UPDATE employee SET department_no = 10 WHERE emp_id = 1;  
UPDATE employee SET department_no = 20 WHERE emp_id = 2;  
UPDATE employee SET department_no = 30 WHERE emp_id = 3;  
UPDATE employee SET department_no = 40 WHERE emp_id = 4;  
UPDATE employee SET department_no = 50 WHERE emp_id = 5;

select * from employee;
select max(salary) from employee;

SELECT 
    SUM(salary) AS Total_salary,
    MAX(salary) AS Max_salary,
    MIN(salary) AS Min_salary,
    AVG(salary) AS Avg_salary,
    COUNT(*) AS Total_Count
FROM employee
GROUP BY job_title;



