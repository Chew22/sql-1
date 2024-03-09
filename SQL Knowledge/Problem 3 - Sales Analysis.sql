-- Total quantity sold
SELECT SUM(quantity) AS total_quantity_sold
FROM sales;

-- Average quantity sold per order
SELECT AVG(quantity) AS average_quantity_sold_per_order
FROM sales;

-- Total sales amount and average sales amount per order
SELECT 
    SUM(s.quantity * i.price) AS total_sales_amount,
    AVG(s.quantity * i.price) AS average_sales_amount_per_order
FROM 
    sales s
JOIN 
    inventories i ON s.product_id = i.product_id;
