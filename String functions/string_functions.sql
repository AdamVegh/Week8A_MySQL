-- 1. Write a query to get the employee id, email id (discard the last three characters).
SELECT EMPLOYEE_ID, REVERSE(SUBSTR(REVERSE(EMAIL),4)) FROM employees;

-- 2. Write a query to get the locations that have minimum street length.
SELECT * FROM locations
WHERE length(STREET_ADDRESS) =
	(SELECT MIN(length(STREET_ADDRESS)) FROM locations);

-- 3. Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. Give each column an appropriate label. Sort the results by the employees' first names.
SELECT FIRST_NAME, length(FIRST_NAME) AS Length_Of_First_Name
FROM employees
WHERE SUBSTR(FIRST_NAME, 1, 1) IN ('A', 'J', 'M')
ORDER BY FIRST_NAME;