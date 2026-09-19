# Business Insights ÇE-Commerce BI Analytics

## 1. Executive Summary

The project analyzes e-commerce sales, profitability, customer behavior, product performance, and regional performance using BigQuery and Tableau Public.

### Overall KPIs

| KPI | Value |

| Total Sales | $8.12M |
| Total Profit | $4.00M |
| Total Orders | 125K |
| Total Customers | 121K |
| Profit Margin | 51.9% |
| Average Order Value | $64.94 |

The business generates strong overall profitability, with a profit margin of 51.9%. The number of customers is close to the number of orders, indicating a customer base dominated by relatively low order frequency.

---

## 2. Sales & Profitability Trends

### Monthly Sales Trend
- Sales show a clear long-term upward trend from 2019 through 2026.
- Growth becomes more pronounced during the later periods.
- The latest period shows a particularly sharp increase in sales.
- This recent acceleration should be investigated to determine whether it reflects genuine business growth, seasonality, a major campaign, or a data-period effect.

### Monthly Profit Trend
- Profit follows the same general upward pattern as sales.
- The increase in profit toward the latest periods indicates that growth is not limited to revenue.
- The sharp final-period increase should be validated against sales volume, order count, promotions, and reporting-period completeness.

**Business implication:** The business demonstrates sustained growth, but the latest spike should be investigated before being treated as a structural trend.

---

## 3. Product Performance

### Top Products by Sales
The strongest products by sales include:
- The North Face Apex Bionic Soft Shell Jacket Çù approximately $19.0K
- NIKE WOMEN'S PRO COMPRESSION SPORTS BRA Çapproximately $11.7K
- The North Face Denali Down Women's Jacket Ç approximately $9.0K
- Alpha Industries Rip Stop Short Ç approximately $8.0K
- Canada Goose Men's Chateu Jacket Ç approximately $7.5K

### Top Products by Profit
The strongest products by profit include:
- The North Face Apex Bionic Soft Shell Jacket Ç approximately $10.3K
- NIKE WOMEN'S PRO COMPRESSION SPORTS BRA Çù approximately $5.9K
- Canada Goose Women's Mystique Çù approximately $4.2K
- Alpha Industries Rip Stop Short Çù approximately $4.1K
- The North Face Denali Down Women's Jacket Çù approximately $4.8K

### Product Insight
The North Face Apex Bionic Soft Shell Jacket is a particularly strong performer because it ranks highly in both sales and profit.

**Business implication:** Products that appear near the top in both revenue and profit are strong candidates for inventory priority, promotional support, and cross-selling strategies.

---

## 4. Customer Performance

### Sales & Profit by Customer Segment

| Segment | Sales | Profit | Profit Margin |
|---|---:|---:|---:|
| Regular | $4.22M | $2.20M | 51.8% |
| Low Value | $2.53M | $1.33M | 52.5% |
| High Value | $0.45M | $0.24M | 53.1% |

The Regular segment contributes the largest amount of both sales and profit.

The High Value segment has the highest profit margin at 53.1%, despite contributing a much smaller absolute amount of sales.

**Business implication:** High Value customers appear relatively profitable, so increasing their number or improving retention could provide meaningful upside.

### Customer Activity Status

| Activity Status | Share |

| Inactive | 77.61% |
| Active | 11.22% |
| At Risk | 11.17% |

The most significant customer-management finding is the very high inactive share of 77.61%.

**Business implication:** Customer reactivation and retention represent major opportunities. Campaigns should prioritize inactive customers, while at-risk customers should receive targeted retention actions before they become inactive.

### Customer Sales vs Order Frequency
The scatter visualization shows customers concentrated around low order frequencies, particularly 1√¢‚Ç¨‚Äú4 orders.

**Business implication:** Increasing repeat purchases is an important opportunity. Loyalty programs, personalized recommendations, bundles, and post-purchase campaigns could help increase order frequency.

---

## 5. Regional Performance

### Sales by State
The highest-sales regions shown include:
- Guangdong √¢‚Ç¨‚Äù approximately $442.6K
- England √¢‚Ç¨‚Äù approximately $335K
- California √¢‚Ç¨‚Äù approximately $300K
- Shanghai √¢‚Ç¨‚Äù approximately $264K
- Texas √¢‚Ç¨‚Äù approximately $200K

### Profit by State
Guangdong is also the strongest profit-producing region, at approximately $229.6K.

Other major profit contributors include England, California, Shanghai, Texas, S√É¬£o Paulo, Beijing, Zhejiang, Hebei, and Jiangsu.

**Business implication:** Guangdong is a particularly important market because it combines high sales with high absolute profit.

### Profit Margin by State
The highest-profit-margin states/regions include:
- Akita 61.0%
- Wakayama 58.3%
- Gifu 56.1%
- West Virginia 54.7%
- Oita 54.5%
- Corse 54.0%
- Northern Capital Territory √¢‚Ç¨‚Äù 54.0%
- Extremadura 54.0%
- Miyagi 54.0%
- Shizuoka 54.0%
- Cantabria 53.8%
- Para√É¬≠ba 53.4%
- Sachsen-Anhalt 53.4%
- Kochi approximately 53.0%
- Kagawa approximately 53.0%

The highest-margin regions are not necessarily the largest sales regions.

**Business implication:** Management should distinguish between high-volume markets and high-efficiency markets. High-margin regions can provide useful benchmarks for pricing, product mix, and operating practices.

### Sales vs Profit by State
The scatter plot shows a strong positive relationship between sales and profit: regions with higher sales generally generate higher profit.

**Business implication:** Scaling sales in strong-performing regions can increase absolute profit, while high-margin but lower-volume regions may offer opportunities for controlled expansion.

---

## 6. Key Business Recommendations

### 1. Reactivate inactive customers
With 77.61% of customers classified as inactive, customer reactivation should be a major priority.

Possible actions:
- Personalized win-back campaigns
- Targeted discounts
- Product recommendations
- Email reminders based on previous purchases
- Limited-time reactivation offers

### 2. Increase repeat purchase frequency
The customer analysis indicates a concentration around low order frequencies.

Possible actions:
- Loyalty/rewards programs
- Bundles and complementary products
- Personalized recommendations
- Post-purchase cross-selling
- Subscription or replenishment strategies where appropriate

### 3. Protect high-performing products
Products that rank highly in both sales and profit should receive close attention for:
- Inventory availability
- Promotion planning
- Cross-selling
- Product placement
- Demand forecasting

### 4. Learn from high-margin regions
The highest-margin regions can be analyzed to identify successful:
- Pricing strategies
- Product mixes
- Customer profiles
- Sales practices

These findings can then be tested in lower-margin regions.

### 5. Prioritize major revenue markets
Large markets such as Guangdong should remain a focus for revenue growth while maintaining profitability.

### 6. Investigate the latest sales spike
The strong increase at the end of the monthly trend should be validated before making strategic decisions based on it.

---

## 7. Portfolio-Level Takeaways

This project demonstrates an end-to-end BI workflow:

**BigQuery SQL Views  Tableau Public Interactive Dashboards Business Insights**

The analysis covers four complementary business perspectives:

1. **Executive Overview** overall business health and trends
2. **Product Performance** revenue and profit contribution by product
3. **Customer Performance** customer value, activity, and order behavior
4. **Regional Performance** geographic sales, profit, and margin analysis

The dashboards are designed to move from high-level KPIs to actionable business questions rather than presenting isolated visualizations.
