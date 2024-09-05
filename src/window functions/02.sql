-- finding the previous order of each customer
SELECT 
    o.customer_id,
    o.order_id,
    o.order_purchase_timestamp,
    LAG(o.order_id) OVER (PARTITION BY o.customer_id ORDER BY o.order_purchase_timestamp) AS previous_order_id
FROM 
    orders o;
