-- 1. Write a query to find the names (first_name, last_name) and salaries of the employees who have higher salary than the employee whose last_name='Bull'
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE SALARY >
	(SELECT SALARY FROM employees
	WHERE LAST_NAME = 'Bull');

-- 2. Find the names (first_name, last_name) of all employees who works in the IT department.
SELECT FIRST_NAME, LAST_NAME FROM employees
WHERE DEPARTMENT_ID =
	(SELECT DEPARTMENT_ID FROM departments
    WHERE DEPARTMENT_NAME = 'IT');

-- 3. Find the names (first_name, last_name) of the employees who are managers
SELECT FIRST_NAME, LAST_NAME FROM employees
WHERE JOB_ID IN
	(SELECT JOB_ID FROM jobs
    WHERE JOB_TITLE LIKE '%manager%');

-- 4. Find the names (first_name, last_name), salary of the employees whose salary is greater than the average salary
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE SALARY > (SELECT AVG(SALARY) FROM employees);

-- 5. Find the names (first_name, last_name), salary of the employees whose salary is equal to the minimum salary for their job grade
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE SALARY =
	(SELECT MIN_SALARY FROM jobs
	WHERE jobs.JOB_ID = employees.JOB_ID);

-- 6. Find the names (first_name, last_name), salary of the employees who earn the same salary as the minimum salary for all departments.
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees a
WHERE a.SALARY =
	(SELECT MIN(SALARY) FROM employees b
	WHERE a.DEPARTMENT_ID = b.DEPARTMENT_ID);

-- 7. Write a query to display the employee ID, first name, last names, and department names of all employees.
SELECT EMPLOYEE_ID,
	   FIRST_NAME,
       LAST_NAME,
       DEPARTMENT_NAME
FROM employees, departments
WHERE employees.DEPARTMENT_ID = departments.DEPARTMENT_ID;

-- 8. Write a query to select last 10 records from a table.
SELECT * FROM employees
ORDER BY EMPLOYEE_ID DESC
LIMIT 10;