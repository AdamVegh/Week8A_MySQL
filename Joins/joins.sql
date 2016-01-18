-- 1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.
SELECT departments.DEPARTMENT_NAME,
	   departments.LOCATION_ID,
	   locations.STREET_ADDRESS,
	   locations.CITY,
       locations.STATE_PROVINCE,
       countries.COUNTRY_NAME
FROM locations
NATURAL JOIN departments
NATURAL JOIN countries;

-- 2. Write a query to find the names (first_name, last name), department ID and name of all the employees.
SELECT employees.FIRST_NAME,
	   employees.LAST_NAME,
	   employees.DEPARTMENT_ID,
       departments.DEPARTMENT_NAME
FROM employees, departments
WHERE employees.DEPARTMENT_ID = departments.DEPARTMENT_ID;

-- 3. Find the names (first_name, last_name), job, department number, and department name of the employees who work in London.
SELECT employees.FIRST_NAME,
	   employees.LAST_NAME,
       jobs.JOB_TITLE,
	   employees.DEPARTMENT_ID,
       departments.DEPARTMENT_NAME
FROM employees, jobs, departments
NATURAL JOIN locations
WHERE employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
AND employees.JOB_ID = jobs.JOB_ID
AND locations.CITY = 'London';
-- OR
SELECT employees.FIRST_NAME,
	   employees.LAST_NAME,
       jobs.JOB_TITLE,
	   employees.DEPARTMENT_ID,
       departments.DEPARTMENT_NAME
FROM employees, jobs, departments
WHERE employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
AND employees.JOB_ID = jobs.JOB_ID
AND departments.LOCATION_ID =
	(SELECT LOCATION_ID FROM locations
    WHERE CITY = 'London');

-- 4. Write a query to get the department name and number of employees in the department.
SELECT departments.DEPARTMENT_NAME,
	   COUNT(employees.DEPARTMENT_ID) AS Number_Of_Employees
FROM departments
LEFT JOIN employees
ON departments.DEPARTMENT_ID = employees.DEPARTMENT_ID
GROUP BY departments.DEPARTMENT_NAME;

-- 5. Find the names (first_name, last_name) and hire date of the employees who were hired after 'Jones'.
SELECT FIRST_NAME, LAST_NAME, HIRE_DATE FROM employees
WHERE HIRE_DATE > (SELECT HIRE_DATE FROM employees
				   WHERE LAST_NAME = 'Jones');