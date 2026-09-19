CREATE OR REPLACE VIEW
  `bigquery-practice-505715.ecommerce_analytics.vw_customer_analysis`
AS

WITH customer_metrics AS (

  SELECT
    user_id,

    MAX(first_name) AS first_name,
    MAX(last_name) AS last_name,

    MAX(customer_gender) AS gender,
    MAX(age) AS age,
    MAX(age_group) AS age_group,

    MAX(city) AS city,
    MAX(state) AS state,
    MAX(country) AS country,

    COUNT(DISTINCT order_id) AS total_orders,

    SUM(net_sales) AS total_sales,

    SUM(profit) AS total_profit,

    MIN(order_date) AS first_order_date,

    MAX(order_date) AS last_order_date

  FROM
    `bigquery-practice-505715.ecommerce_analytics.vw_sales_summary`

  GROUP BY
    user_id
),

customer_metrics_enriched AS (

  SELECT
    *,

    DATE_DIFF(
      last_order_date,
      first_order_date,
      DAY
    ) AS customer_lifetime_days,

    DATE_DIFF(
      CURRENT_DATE(),
      last_order_date,
      DAY
    ) AS days_since_last_order,

    SAFE_DIVIDE(
      total_sales,
      total_orders
    ) AS average_order_value,

    SAFE_DIVIDE(
      total_profit,
      total_sales
    ) AS profit_margin

  FROM
    customer_metrics
)

SELECT
  *,

  RANK() OVER (
    ORDER BY total_sales DESC
  ) AS customer_sales_rank,

  RANK() OVER (
    ORDER BY total_profit DESC
  ) AS customer_profit_rank,

  CASE
    WHEN total_sales >= 1000
         AND total_orders >= 5
      THEN 'VIP'

    WHEN total_sales >= 500
         AND total_orders >= 3
      THEN 'High Value'

    WHEN total_orders >= 2
      THEN 'Regular'

    ELSE 'Low Value'
  END AS customer_segment,

  CASE
    WHEN days_since_last_order <= 30
      THEN 'Active'

    WHEN days_since_last_order <= 90
      THEN 'At Risk'

    ELSE 'Inactive'
  END AS activity_status

FROM
  customer_metrics_enriched;