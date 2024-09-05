-- DELIMITER $$

-- CREATE TRIGGER before_payment_insert
-- BEFORE INSERT ON order_payments
-- FOR EACH ROW
-- BEGIN
--     IF NEW.payment_type NOT IN ('credit_card', 'debit_card', 'voucher', 'boleto') THEN
--         SIGNAL SQLSTATE '45000'
--         SET MESSAGE_TEXT = 'Invalid payment type as trigger';
--     END IF;
-- END $$

-- DELIMITER ;

-- DROP trigger before_payment_insert;

INSERT INTO  order_payments(order_id,payment_sequential,payment_type,payment_installments,payment_value)
VALUES('qweertyu3245678',1,'nee',2,345)