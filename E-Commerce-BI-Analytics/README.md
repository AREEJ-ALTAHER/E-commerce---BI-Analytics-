# E-Commerce Business Intelligence & Analytics

## Project Overview

An end-to-end Business Intelligence and Analytics project designed to analyze
e-commerce sales, profitability, customer behavior, product performance,
and regional performance.

The project combines Google BigQuery for data preparation and analytical
modeling with Tableau Public for interactive business dashboards.

---

## Business Objective

The objective of this project is to transform raw e-commerce data into
actionable business insights that support:

- Sales performance monitoring
- Profitability analysis
- Product performance evaluation
- Customer segmentation and behavior analysis
- Regional performance comparison
- Identification of high-value customers and products
- Business performance monitoring through interactive dashboards

---

## Tools & Technologies

- Google BigQuery
- SQL
- Tableau Public
- Data Visualization
- Business Intelligence
- Exploratory Data Analysis
- Calculated Fields
- Interactive Dashboards

---

## Data Preparation

The analytical data was prepared in Google BigQuery using SQL views.

The project uses separate analytical views based on different business
dimensions:

- Monthly Performance
- Product Performance
- Customer Analysis
- Regional Performance

This approach separates the analytical grains and provides clean datasets
for dashboard development.

---

## Key Performance Indicators

The Executive Overview dashboard provides the following core KPIs:

| KPI | Value |
| Total Sales | $8.12M |
| Total Profit | $4.00M |
| Total Orders | 125K |
| Total Customers | 121K |
| Profit Margin | 51.9% |
| Average Order Value | $64.94 |

---

# Dashboards

## 1. Executive Overview

Provides a high-level view of overall business performance.

Key areas include:

- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Profit Margin
- Average Order Value
- Monthly Sales Performance

### Dashboard Preview

![Executive Overview](Tableau/Executive_Overview.png)

---

## 2. Product Performance

Analyzes product-level sales and profitability.

Key visualizations:

- Top 10 Products by Sales
- Top 10 Products by Profit
- Sales vs Profit by Product

The dashboard helps identify products that generate strong sales and
products that contribute significantly to profitability.

### Dashboard Preview

![Product Performance](Tableau/Product_Performance.png)

---

## 3. Customer Performance

Analyzes customer segments, purchasing behavior, and profitability.

Key visualizations:

- Profit by Customer Segment
- Sales by Customer Segment
- Customer Sales vs Order Frequency
- Customer Activity Status
- Profit Margin by Customer Segment

### Dashboard Preview

![Customer Performance](Tableau/Customer_Performance.png)

---

## 4. Regional Performance

Provides a geographic view of sales and profitability.

Key visualizations:

- Sales by State
- Profit by State
- Geographic Sales Distribution
- Profit Margin by State
- Sales vs Profit by State

### Dashboard Preview

![Regional Performance](Tableau/Regional_Performance.png)

---

# Key Business Insights

## Overall Performance

The business generated approximately $8.12M in sales and $4.00M in profit,
resulting in an overall profit margin of approximately 51.9%.

The Average Order Value was approximately $64.94.

---

## Product Performance

The product analysis highlights significant differences in sales and profit
contribution across products.

The Top 10 analysis helps identify the products that have the greatest impact
on overall sales and profitability.

The Sales vs Profit analysis provides an additional view of the relationship
between revenue generation and profitability.

---

## Customer Performance

Customer segmentation reveals meaningful differences in sales and profit
contribution.

Regular customers contribute the largest share of total sales and profit,
while High Value customers demonstrate the highest average profit margin
among the three customer segments.

Customer activity analysis also shows a large inactive customer population,
highlighting a potential opportunity for customer retention and reactivation
strategies.

---

## Regional Performance

Regional analysis reveals geographic differences in sales, profit, and
profitability.

The geographic dashboard enables comparison between states and helps identify
regions with stronger sales performance and higher profit margins.

---

# Technical Approach

### BigQuery

SQL was used to prepare analytical views for different business dimensions.

Example analytical layers:

```text
Raw E-Commerce Data
        
BigQuery SQL Transformations
       
Analytical Views
       
Tableau Public
        
Interactive Dashboards
        
Business Insights