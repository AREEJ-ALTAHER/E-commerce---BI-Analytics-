CREATE OR REPLACE VIEW
  `bigquery-practice-505715.ecommerce_analytics.vw_monthly_performance`
AS

SELECT
  DATE_TRUNC(order_date, MONTH) AS month,

  SUM(net_sales) AS total_sales,

  SUM(profit) AS total_profit,

  COUNT(DISTINCT order_id) AS total_orders,

  COUNT(DISTINCT user_id) AS total_customers,

  SAFE_DIVIDE(
    SUM(profit),
    SUM(net_sales)
  ) AS profit_margin,

  SAFE_DIVIDE(
    SUM(net_sales),
    COUNT(DISTINCT order_id)
  ) AS average_order_value

FROM
  `bigquery-practice-505715.ecommerce_analytics.vw_sales_summary`

GROUP BY
  month;