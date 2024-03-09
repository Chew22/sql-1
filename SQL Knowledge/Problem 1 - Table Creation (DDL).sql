-- Creating Parent Table

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT,
    position TEXT,
    department TEXT,
    salary NUMERIC
);


CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name TEXT,
    city TEXT
);


CREATE TABLE inventories (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name TEXT,
    quantity INTEGER,
    price NUMERIC
);

-- Creating Child Table

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    customer_id INTEGER,
    total_amount NUMERIC,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE sales (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES inventories(product_id)
);

-- Inserting Data

INSERT INTO employees (name, position, department, salary)
VALUES
    ('John Doe', 'Manager', 'Sales', 50000),
    ('Jane Smith', 'Assistant Manager', 'Sales', 40000),
    ('Michael Johnson', 'Sales Associate', 'Sales', 30000);


INSERT INTO customers (customer_name, city)
VALUES
    ('ABC Company', 'New York'),
    ('XYZ Corporation', 'Los Angeles'),
    ('123 Industries', 'Chicago');


INSERT INTO inventories (product_name, quantity, price)
VALUES
    ('Product A', 100, 10.99),
    ('Product B', 50, 20.99),
    ('Product C', 200, 5.99);