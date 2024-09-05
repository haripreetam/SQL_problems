-- Find all products and their order details, including those that have not been ordered.
SELECT 
    p.product_id,
    p.product_name_lenght,  -- Assuming you want to include product details
    oi.order_id,
    oi.price
FROM 
    products p
LEFT JOIN 
    order_items oi ON p.product_id = oi.product_id;
