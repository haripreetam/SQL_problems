
-- SELECT CONCAT(customer_city, ',', customer_state) AS full_name FROM customers;

SELECT SUBSTRING(product_category_name_english, 1, 10) AS short_name FROM product_category_name_translation;

-- SELECT * FROM product_category_name_translation;
-- SELECT LENGTH(product_category_name_english) AS name_length FROM product_category_name_translation;

-- SELECT UPPER(product_name) AS product_name_upper FROM products;

-- SELECT LOWER(product_name) AS product_name_lower FROM products;

-- SELECT TRIM(customer_name) AS trimmed_name FROM customers;

-- SELECT REPLACE(product_name, 'Old', 'New') AS updated_name FROM products;

-- SELECT LEFT(product_name, 5) AS left_part FROM products;

-- SELECT RIGHT(product_name, 5) AS right_part FROM products;

-- SELECT INSTR(customer_email, '@') AS at_position FROM customers;