-- DELIMITER $$

-- CREATE PROCEDURE GetOrdersByCustomer(
--     IN p_customer_id VARCHAR(100)
-- )
-- BEGIN
--     SELECT 
--         order_id,
--         order_status,
--         order_purchase_timestamp,
--         order_delivered_customer_date
--     FROM orders
--     WHERE customer_id = p_customer_id
--     ORDER BY order_purchase_timestamp DESC;
-- END;

-- -- DELIMITER ;

-- SHOW PROCEDURE STATUS
-- WHERE Db = 'ecommerce'; 


-- USE employees
-- DELIMITER $$ 
-- CREATE PROCEDURE get_avg_sal_by_dept_id(IN dept_id INT) 
-- BEGIN
-- SELECT department_id,
-- AVG(salary) AS average_salary
-- FROM employees
-- WHERE department_id = dept_id
-- GROUP BY department_id;
-- END $$ DELIMITER;


-- CALL get_avg_sal_by_dept_id(1);
-- ☻
EXPLAIN 
SELECT 
        order_id,
        order_status,
        order_purchase_timestamp,
        order_delivered_customer_date
    FROM orders
    WHERE customer_id = 'e481f51cbdc54678b7cc49136f2d6af7'
    ORDER BY order_purchase_timestamp DESC;


-- SHOW PROCEDURE STATUS
-- WHERE Db = 'ecommerce'; 