-- 1. Write a query to get the number of employees with the same job.
SELECT jobs.JOB_TITLE, COUNT(employees.EMPLOYEE_ID) AS numOfEmployees
FROM employees
LEFT JOIN jobs
ON jobs.JOB_ID = employees.JOB_ID
GROUP BY JOB_TITLE;

-- 2. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
SELECT MANAGER_ID, MIN(SALARY) AS Lowest_Paid_Employee FROM employees
GROUP BY MANAGER_ID;

-- 3. Write a query to get the department ID and the total salary payable in each department.
SELECT DEPARTMENT_ID, SUM(SALARY) AS Total_Salary FROM employees
GROUP BY DEPARTMENT_ID;

-- 4. Write a query to get the average salary for each job ID excluding programmer.
SELECT JOB_ID, AVG(SALARY) AS Average_Salary FROM employees
WHERE JOB_ID != 'IT_PROG'
GROUP BY JOB_ID;

-- 5. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
SELECT JOB_ID, MAX(SALARY) AS Maximum_Salary FROM employees
GROUP BY JOB_ID
HAVING MAX(SALARY) >= 4000;

-- 6. Write a query to get the average salary for all departments employing more than 10 employees.
SELECT DEPARTMENT_ID, AVG(SALARY) AS Average_Salary FROM employees
GROUP BY DEPARTMENT_ID
HAVING COUNT(DEPARTMENT_ID) > 10;