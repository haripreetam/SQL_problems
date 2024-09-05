-- Find all sellers and the products they sell, including those who have not sold any products.
SELECT 
    s.seller_id,
    s.seller_city,
    p.product_id,
    p.product_name_lenght
FROM 
    products p
RIGHT JOIN 
    sellers s ON p.product_id = s.seller_id;
