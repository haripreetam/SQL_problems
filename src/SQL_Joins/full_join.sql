-- List all products and orders, including those without corresponding matches in either table.
SELECT 
    p.product_id,
    p.product_name_lenght,
    o.order_id,
    o.order_status
FROM 
    products p
FULL OUTER JOIN 
    order_items oi ON p.product_id = oi.product_id
FULL OUTER JOIN 
    orders o ON oi.order_id = o.order_id;
