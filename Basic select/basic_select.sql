-- 1. Write a query to get unique department ID from employee table.
SELECT DISTINCT DEPARTMENT_ID FROM employees;

-- 2. Write a query to get all employee details from the employee table order by first name, descending.
SELECT * FROM employees ORDER BY FIRST_NAME DESC;

-- 3. Write a query to get the total salaries payable to employees.
SELECT SUM(SALARY) AS totalSalary FROM employees;

-- 4. Write a query to get the maximum and minimum salary from employees table.
SELECT MAX(SALARY) AS Max_Salary, MIN(SALARY) AS Min_Salary from employees;

-- 5. Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(SALARY) AS Average_Salary,
COUNT(*) AS Number_Of_Employees
FROM employees;

-- 6. Write a query to get the number of employees working with the company.
SELECT COUNT(*) AS Number_Of_Employees FROM employees;

-- 7. Write a query to get the number of jobs available in the employees table.
SELECT COUNT(DISTINCT JOB_ID) AS Number_Of_Jobs FROM employees;

-- 8. Write a query get all first name from employees table in upper case.
SELECT DISTINCT UPPER(FIRST_NAME) FROM employees;

-- 9. Write a query to get the first 3 characters of first name from employees table.
SELECT SUBSTRING(FIRST_NAME, 1, 3) FROM employees;

-- 10. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS Name FROM employees;

-- 11. Write a query to get first name from employees table after removing white spaces from both side.
SELECT TRIM(FIRST_NAME) FROM employees;

-- 12. Write a query to get the length of the employee names (first_name, last_name) from employees table.
SELECT LENGTH(FIRST_NAME) AS Length_Of_First_Name,
	   LENGTH(LAST_NAME) AS Length_Of_Last_Name
FROM employees;

-- 13. Write a query to select first 10 records from a table.
SELECT * FROM employees LIMIT 10;