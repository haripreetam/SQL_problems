
-- CREATE TABLE order_status_log (
--     log_id INT AUTO_INCREMENT PRIMARY KEY,
--     order_id VARCHAR(100),
--     status_change_time DATETIME NOT NULL,
--     old_status VARCHAR(50),
--     new_status VARCHAR(50),
--     CONSTRAINT fk_order
--         FOREIGN KEY (order_id) 
--         REFERENCES orders(order_id)
--         ON DELETE CASCADE
-- );


-- SHOW CREATE TABLE orders;
-- ALTER TABLE orders
-- ADD UNIQUE(order_id);


-- USE ecommerce
-- DELIMITER $$

-- CREATE TRIGGER after_order_update
-- AFTER UPDATE ON orders
-- FOR EACH ROW
-- BEGIN
--     IF NEW.order_status <> OLD.order_status THEN
--         INSERT INTO order_status_log (order_id, status_change_time, old_status, new_status)
--         VALUES (NEW.order_id, NOW(), OLD.order_status, NEW.order_status);
--     END IF;
-- END $$

-- DELIMITER ;


-- INSERT INTO `ecommerce`.`orders`
-- (`order_id`,
-- `customer_id`,
-- `order_status`,
-- `order_purchase_timestamp`,
-- `order_approved_at`,
-- `order_delivered_carrier_date`,
-- `order_delivered_customer_date`,
-- `order_estimated_delivery_date`)
-- VALUES
-- ('asdfghjk23456789','abc123','delivered','2017-10-02 10:56:33','2017-10-02 11:07:15','2017-10-04 19:55:00','2017-10-10 21:25:13','2017-10-18 00:00:00')

UPDATE `ecommerce`.`orders`
SET
    `order_status` = 'shipped',
    `order_estimated_delivery_date` = '2017-10-15 00:00:00'
WHERE
    `order_id` = 'asdfghjk23456789';
