CREATE OR REPLACE VIEW
  `bigquery-practice-505715.ecommerce_analytics.vw_regional_performance`
AS

WITH regional_metrics AS (

  SELECT
    country,
    state,

    COUNT(DISTINCT order_id) AS total_orders,

    COUNT(DISTINCT user_id) AS total_customers,

    SUM(net_sales) AS total_sales,

    SUM(profit) AS total_profit,

    SUM(net_sales) / COUNT(DISTINCT order_id)
      AS average_order_value

  FROM
    `bigquery-practice-505715.ecommerce_analytics.vw_sales_summary`

  GROUP BY
    country,
    state
)

SELECT
  *,

  SAFE_DIVIDE(
    total_profit,
    total_sales
  ) AS profit_margin,

  RANK() OVER (
    ORDER BY total_sales DESC
  ) AS sales_rank,

  RANK() OVER (
    ORDER BY total_profit DESC
  ) AS profit_rank

FROM
  regional_metrics;