-- List all products along with the seller and their corresponding order item price.
SELECT 
    p.product_id,
    p.product_name_lenght,  -- Assuming you want to include the product name or details
    s.seller_id,
    s.seller_city,          -- You can include more seller details if needed
    oi.price
FROM 
    products p
INNER JOIN 
    order_items oi ON p.product_id = oi.product_id
INNER JOIN 
    sellers s ON oi.seller_id = s.seller_id;
