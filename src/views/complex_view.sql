CREATE VIEW seller_sales_summary AS
SELECT 
    s.seller_id,
    s.seller_city,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.price) AS total_sales
FROM 
    sellers s
JOIN 
    order_items oi ON s.seller_id = oi.seller_id
JOIN 
    orders o ON oi.order_id = o.order_id
GROUP BY 
    s.seller_id, s.seller_city;
