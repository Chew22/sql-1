-- Update price of a specific product
UPDATE inventories
SET price = 2000
WHERE product_id = 1;

-- Update price of all products by increasing by 10%
UPDATE inventories
SET price = price * 1.1;
