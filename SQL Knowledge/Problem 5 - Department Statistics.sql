-- Calculate average salary for each department
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- Calculate highest salary for each department and retrieve employee(s) with that salary
SELECT e.department, e.salary AS highest_salary, e.name AS employee_name
FROM employees e
JOIN (
    SELECT department, MAX(salary) AS max_salary
    FROM employees
    GROUP BY department
) max_salaries
ON e.department = max_salaries.department AND e.salary = max_salaries.max_salary;
