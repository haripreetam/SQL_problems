
-- SELECT COUNT(*) AS total_orders FROM orders;

SELECT SUM(payment_value) AS total_revenue FROM order_payments;

-- SELECT AVG(payment_value) AS avg_order_value FROM order_payments;

-- SELECT MIN(payment_value) AS min_payment FROM order_payments;

-- SELECT MAX(payment_value) AS max_payment FROM order_payments;

-- SELECT order_id, GROUP_CONCAT(product_id) AS product_list
-- FROM order_items
-- GROUP BY order_id;

-- SELECT VARIANCE(payment_value) AS payment_variance FROM order_payments;

-- SELECT STDDEV(payment_value) AS payment_stddev FROM order_payments;

-- SELECT order_id, order_purchase_timestamp 
-- FROM orders 
-- ORDER BY order_purchase_timestamp ASC 
-- LIMIT 1;

-- SELECT order_id, order_purchase_timestamp 
-- FROM orders 
-- ORDER BY order_purchase_timestamp DESC 
-- LIMIT 1;