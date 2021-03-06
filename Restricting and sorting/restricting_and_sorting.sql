-- 1. Write a query to display the names (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE (SALARY < 10000 or SALARY > 15000)
AND DEPARTMENT_ID in (30, 100);

-- 2. Write a query to display the names (first_name, last_name) and hire date for all employees who were hired in 1987.
SELECT FIRST_NAME, LAST_NAME, HIRE_DATE FROM employees
WHERE YEAR(HIRE_DATE) = 1987;

-- 3. Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
SELECT FIRST_NAME FROM employees
WHERE FIRST_NAME LIKE '%b%'
AND FIRST_NAME LIKE '%c%';
-- OR
SELECT FIRST_NAME FROM employees
WHERE FIRST_NAME REGEXP 'b.*c|c.*b';

-- 4. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.
SELECT LAST_NAME, JOB_TITLE, SALARY FROM employees, jobs
WHERE employees.JOB_ID = jobs.JOB_ID
AND JOB_TITLE IN ('Programmer', 'Shipping Clerk')
AND SALARY NOT IN (4500, 10000, 15000);

-- 5. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
SELECT * FROM employees
WHERE LAST_NAME IN ('BLAKE', 'SCOTT', 'KING', 'FORD');