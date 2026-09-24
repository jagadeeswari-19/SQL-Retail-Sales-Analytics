# Retail Sales Analytics — SQL Business Analysis

A SQL-focused retail analytics project using the Superstore dataset to analyze sales performance, customer behavior, product profitability, regional performance, and business risk.

The project demonstrates practical MySQL skills including aggregations, joins, CTEs, window functions, conditional logic, filtering, ranking, and profitability analysis.

---

## 📊 Project Overview

This project analyzes retail transaction data to answer practical business questions such as:

- Which products and categories generate the most sales?
- Which products and categories are most profitable?
- Which customers contribute the most revenue?
- How concentrated is revenue among top customers?
- Which products generate losses?
- Which regions and segments perform better?
- What business risks can be identified from sales and profitability data?

---

## 🛠️ Tools & Technologies

- **MySQL**
- **SQL**
- **Python**
- **Pandas**
- **Git & GitHub**
- **Superstore Dataset**

### SQL Concepts Used

- SELECT / WHERE
- GROUP BY / HAVING
- ORDER BY
- Aggregate Functions
- CASE statements
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- ROW_NUMBER()
- RANK()
- Joins
- Conditional Aggregation
- Profitability Analysis
- Customer Segmentation
- Business KPI Analysis

---

## 📁 Project Structure

```text
retail-sales-analytics/
│
├── data/
│   └── superstore.csv
│
├── outputs/
│   ├── results/
│   │   ├── top10_customer_revenue_share.csv
│   │   ├── loss_making_products.csv
│   │   └── loss_making_products_detail.csv
│   │
│   └── screenshots/
│       ├── top10_customer_revenue_share.png
│       ├── loss_making_products.png
│       └── loss_making_products_detail.png
│
├── sql/
│   ├── 01_create_table.sql
│   ├── 02_sales_analysis.sql
│   ├── 03_customer_analysis.sql
│   ├── 04_product_analysis.sql
│   ├── 05_regional_analysis.sql
│   ├── 06_profit_analysis.sql
│   ├── 07_advanced_queries.sql
│   └── 08_customer_product_risk_analysis.sql
│
├── import_superstore.py
└── README.md
🔎 SQL Analysis
1. Sales Performance Analysis

Analyzed overall sales performance using SQL aggregations and grouped analysis.

Key areas:

Total sales
Sales by category
Sales by sub-category
Sales trends
High-value transactions
Sales contribution across business dimensions
2. Customer Analysis

Analyzed customer-level purchasing behavior to identify:

High-value customers
Customer revenue contribution
Customer purchase patterns
Customer profitability
3. Product Analysis

Analyzed product and sub-category performance using:

Total sales
Total profit
Product-level aggregation
Product ranking
Sub-category comparison
4. Regional Analysis

Analyzed sales and profitability across geographic regions.

Key areas:

Regional sales
Regional profit
State-level performance
Regional contribution
Identification of strong and weak performing areas
5. Profitability Analysis

Evaluated profitability at multiple levels:

Product
Sub-category
Category
Customer
Region

The analysis identifies areas where high sales do not necessarily translate into high profitability.

📈 Customer Revenue Concentration

A dedicated analysis was added to measure how much of the company's total revenue comes from its highest-value customers.

Using a CTE and ROW_NUMBER() window function, customers were ranked based on total sales.

Result

Top 10 customers contribute 6.7% of total revenue.

SQL approach:

WITH customer_revenue AS (
    SELECT
        Customer_Name,
        SUM(Sales) AS revenue
    FROM superstore
    GROUP BY Customer_Name
),

ranked_customers AS (
    SELECT
        Customer_Name,
        revenue,
        ROW_NUMBER() OVER (ORDER BY revenue DESC) AS rn
    FROM customer_revenue
)

SELECT
    ROUND(
        SUM(
            CASE
                WHEN rn <= 10 THEN revenue
                ELSE 0
            END
        )
        / SUM(revenue) * 100,
        1
    ) AS top10_revenue_share_pct
FROM ranked_customers;
Business Interpretation

The analysis provides a measure of customer revenue concentration and can be used to understand how dependent overall revenue is on the highest-value customers.

⚠️ Loss-Making Product Analysis

Products were grouped by product name and their total profit was calculated across all transactions.

Products with:

Total Profit < 0

were classified as loss-making products.

Results
Metric	Result
Loss-making products	N
Aggregate loss	$Y

Replace N and $Y above with the exact values returned by MySQL.

The analysis also produces a detailed list of loss-making products containing:

Product name
Total sales
Total profit

This helps identify products that generate sales but result in an overall negative profit contribution.

📊 Key Business Questions Answered
Business Question	SQL Analysis
Which products generate the most sales?	Product Analysis
Which products are most profitable?	Profitability Analysis
Which customers generate the most revenue?	Customer Analysis
How concentrated is revenue among top customers?	Top 10 Customer Revenue Share
Which products are loss-making?	Loss-Making Product Analysis
Which regions perform better?	Regional Analysis
Where does high sales not translate into high profit?	Profitability Analysis
📂 Output Files

The project contains exported analysis results in the outputs/results/ directory.

Customer Revenue Concentration
top10_customer_revenue_share.csv

Contains the calculated revenue contribution of the top 10 customers.

Loss-Making Products
loss_making_products.csv

Contains the count of loss-making products and their aggregate loss.

Loss-Making Product Details
loss_making_products_detail.csv

Contains product-level sales and profit information for products with negative aggregate profit.

🖼️ Analysis Screenshots

Screenshots of the MySQL analysis results are available in:

outputs/screenshots/

Including:

Top 10 customer revenue share
Loss-making product summary
Loss-making product details
💡 Key Insights
Customer Revenue Concentration

The top 10 customers account for 6.7% of total revenue, providing a measurable view of revenue concentration across the customer base.

Product Profitability

The loss-making product analysis identifies products whose cumulative profit is negative, allowing the business to investigate pricing, discounting, product costs, or other profitability drivers.

🚀 How to Run the Project
1. Clone the repository
git clone https://github.com/jagadeeswari-19/SQL-Retail-Sales-Analytics.git
2. Open MySQL Workbench

Create or select the database used for the project.

3. Create the Superstore table

Run:

sql/01_create_table.sql
4. Import the dataset

Import:

data/superstore.csv

into the superstore table.

5. Run the SQL analyses

Execute the SQL files in order:

01_create_table.sql
02_sales_analysis.sql
03_customer_analysis.sql
04_product_analysis.sql
05_regional_analysis.sql
06_profit_analysis.sql
07_advanced_queries.sql
08_customer_product_risk_analysis.sql
📌 Skills Demonstrated

This project demonstrates practical ability in:

SQL data analysis
MySQL
Data aggregation
CTEs
Window functions
Customer analysis
Product profitability analysis
Revenue concentration analysis
Business KPI analysis
Data-driven business problem solving
Git and GitHub
👩‍💻 Author

Jagadeeswari S

B.Tech — Artificial Intelligence & Data Science

GitHub:
https://github.com/jagadeeswari-19