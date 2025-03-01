-- Retrieve names and positions of employees with salary > $50,000
SELECT name, position
FROM employees
WHERE salary > 50000;

-- Retrieve names, positions, and salaries of the top three highest-paid employees
SELECT name, position, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
