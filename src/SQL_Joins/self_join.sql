-- Find products that are related to each other based on a specific criteria (e.g., similar weight).
SELECT 
    p1.product_id AS Product1_ID,
    p2.product_id AS Product2_ID,
    p1.product_weight_g AS Product1_Weight,
    p2.product_weight_g AS Product2_Weight
FROM 
    products p1
JOIN 
    products p2 ON p1.product_id <> p2.product_id AND ABS(p1.product_weight_g - p2.product_weight_g) < 100;  -- Example condition for similar weight


-- LIMIT (100);