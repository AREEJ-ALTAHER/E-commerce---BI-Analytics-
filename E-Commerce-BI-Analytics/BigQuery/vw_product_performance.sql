CREATE OR REPLACE VIEW
  `bigquery-practice-505715.ecommerce_analytics.vw_product_performance`
AS

WITH product_sales AS (

  SELECT
    product_id,
    product_name,
    category,
    brand,
    department,

    COUNT(DISTINCT order_id) AS total_orders,

    SUM(net_sales) AS total_sales,

    SUM(profit) AS total_profit,

    COUNT(*) AS units_sold,

    AVG(sale_price) AS average_sale_price,

    AVG(retail_price) AS average_retail_price

  FROM
    `bigquery-practice-505715.ecommerce_analytics.vw_sales_summary`

  GROUP BY
    product_id,
    product_name,
    category,
    brand,
    department
)

SELECT
  *,

  SAFE_DIVIDE(
    total_profit,
    total_sales
  ) AS profit_margin,

  SAFE_DIVIDE(
    total_sales,
    total_orders
  ) AS average_order_value,

  RANK() OVER (
    ORDER BY total_sales DESC
  ) AS sales_rank,

  RANK() OVER (
    ORDER BY total_profit DESC
  ) AS profit_rank,

  RANK() OVER (
    PARTITION BY category
    ORDER BY total_sales DESC
  ) AS category_sales_rank,

  CASE
    WHEN total_sales >= 10000
         AND SAFE_DIVIDE(total_profit, total_sales) >= 0.20
      THEN 'High Sales - High Margin'

    WHEN total_sales >= 10000
         AND SAFE_DIVIDE(total_profit, total_sales) < 0.20
      THEN 'High Sales - Low Margin'

    WHEN total_sales < 10000
         AND SAFE_DIVIDE(total_profit, total_sales) >= 0.20
      THEN 'Low Sales - High Margin'

    ELSE 'Low Sales - Low Margin'
  END AS performance_segment

FROM
  product_sales;