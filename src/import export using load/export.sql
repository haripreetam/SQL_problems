SELECT * 
INTO OUTFILE 'D:/Python_CFP/sql/ecommerce_dataset/exported_data.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM new_table_qq;
