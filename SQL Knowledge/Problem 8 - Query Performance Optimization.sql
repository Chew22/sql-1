-- Create an index on the department column
-- Adjust length as needed
CREATE INDEX idx_department ON employees (department(50)); 

-- Create an index on the salary column
CREATE INDEX idx_salary ON employees (salary);

-- Hi, I will explain on why i choose these attributes as index here
-- In this case, the columns involved in the WHERE clause, namely department and salary, would be the primary candidates for indexing.
-- 1. Addressing index on department allow the database engine to quickly locate all rows with the specified department value ('Sales'). Since department values tend to have low cardinality (few distinct values), this index would be highly selective and efficient.
-- 2. 'salary' column might not be as selective as the 'department' column, especially if there are many employees with salaries over $50,000, it would still aid in narrowing down the search space and improving the overall performance of the query.

-- Potential trade-offs and drawbacks to consider are...
-- 1. Indexes consume additional storage space. Creating multiple indexes, especially on large tables, can significantly increase storage requirements.
-- 2. Whenever there are inserts, updates, or deletes on the indexed columns, the database engine must maintain the indexes, which can introduce overhead and potentially slow down write operations.