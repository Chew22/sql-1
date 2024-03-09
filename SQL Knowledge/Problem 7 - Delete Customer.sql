-- Delete a specific customer by customer_id
DELETE FROM customers
WHERE customer_id = <customer_id>;

-- Delete related records associated with the customer being deleted
DELETE FROM orders
WHERE customer_id = <customer_id>;

DELETE FROM sales
WHERE customer_id = <customer_id>;

-- Now delete the customer
DELETE FROM customers
WHERE customer_id = <customer_id>;
