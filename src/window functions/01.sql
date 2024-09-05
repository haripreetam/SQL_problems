WITH ranked_products AS (
    SELECT
        product_id,
        price,
        RANK() OVER (ORDER BY price DESC) AS product_rank
    FROM
        order_items
)
SELECT
    product_id,
    price,
    product_rank
FROM
    ranked_products
WHERE
    product_rank <= 3;
