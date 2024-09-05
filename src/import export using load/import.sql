
-- set global local_infile = 1;

LOAD DATA INFILE "D:/Python_CFP/sql/ecommerce dataset/product_category_name_translation_for_importing.csv"
INTO TABLE new_table_qq
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; -- Optional: Skip header row if it exists


-- CREATE TABLE employees (
--     -- employee_id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     hire_date DATE,
--     salary DECIMAL(10, 2)
-- );
