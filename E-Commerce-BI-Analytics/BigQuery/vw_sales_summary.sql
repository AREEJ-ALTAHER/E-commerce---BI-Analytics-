CREATE OR REPLACE VIEW
  `bigquery-practice-505715.ecommerce_analytics.vw_sales_summary`
AS

WITH base_sales AS (

  SELECT
    oi.id AS order_item_id,
    oi.order_id,
    oi.user_id,
    oi.product_id,
    oi.inventory_item_id,

    -- Order information
    o.status AS order_status,
    oi.status AS item_status,
    DATE(o.created_at) AS order_date,

    -- Product information
    p.name AS product_name,
    p.category,
    p.brand,
    p.department,
    p.sku,
    p.retail_price,

    -- Customer information
    u.first_name,
    u.last_name,
    u.gender AS customer_gender,
    u.age,
    u.city,
    u.state,
    u.country,

    -- Transaction information
    oi.sale_price,
    ii.cost,

    -- Business metrics
    CASE
      WHEN oi.status IN ('Cancelled', 'Returned')
        THEN 0
      ELSE oi.sale_price
    END AS net_sales,

    CASE
      WHEN oi.status IN ('Cancelled', 'Returned')
        THEN 0
      ELSE oi.sale_price - ii.cost
    END AS profit

  FROM
    `bigquery-public-data.thelook_ecommerce.order_items` AS oi

  LEFT JOIN
    `bigquery-public-data.thelook_ecommerce.orders` AS o
    ON oi.order_id = o.order_id

  LEFT JOIN
    `bigquery-public-data.thelook_ecommerce.products` AS p
    ON oi.product_id = p.id

  LEFT JOIN
    `bigquery-public-data.thelook_ecommerce.users` AS u
    ON oi.user_id = u.id

  LEFT JOIN
    `bigquery-public-data.thelook_ecommerce.inventory_items` AS ii
    ON oi.inventory_item_id = ii.id
)

SELECT
  *,
  
  SAFE_DIVIDE(profit, net_sales) AS profit_margin,

  CASE
    WHEN age < 25 THEN '18-24'
    WHEN age BETWEEN 25 AND 34 THEN '25-34'
    WHEN age BETWEEN 35 AND 44 THEN '35-44'
    WHEN age BETWEEN 45 AND 54 THEN '45-54'
    WHEN age >= 55 THEN '55+'
    ELSE 'Unknown'
  END AS age_group

FROM
  base_sales;