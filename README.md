# SQL Retail Sales Analytics

## Project Overview

This project analyzes retail sales data from the Superstore dataset using SQL. The objective is to uncover actionable business insights related to sales performance, customer behavior, product profitability, and regional trends.

The project demonstrates SQL skills commonly required for Data Analyst and Business Analyst roles, including aggregations, joins, window functions, Common Table Expressions (CTEs), ranking functions, and business KPI analysis.

---

## Business Problem

Retail organizations generate thousands of transactions daily. Decision-makers need visibility into:

* Which customers generate the most revenue
* Which products contribute the highest sales
* Which regions perform best
* Which products cause losses
* How profit and sales vary across categories

This project answers these business questions using SQL.

---

## Dataset

Dataset: Superstore Sales Dataset

Records: Approximately 9,994 transactions

Features include:

* Orders
* Customers
* Products
* Sales
* Profit
* Quantity
* Discounts
* Categories
* Regions

---

## Tools & Technologies

* SQL
* MySQL
* Python
* Pandas
* SQLAlchemy
* GitHub

---

## Database Schema

Table Name:

superstore

Key Columns:

* Order_ID
* Order_Date
* Customer_ID
* Customer_Name
* Segment
* Region
* Category
* Sub_Category
* Product_Name
* Sales
* Quantity
* Discount
* Profit

---

## Business Questions Solved

### Sales Analysis

* What is the total revenue?
* What is the average order value?
* How many orders were placed?
* What are the monthly sales trends?

### Customer Analysis

* Who are the top customers?
* What is the customer lifetime value?
* Which customer segments generate the most revenue?

### Product Analysis

* Which products generate the highest sales?
* Which products sell the most units?
* Which categories are most profitable?

### Regional Analysis

* Which regions generate the highest revenue?
* Which states contribute the most sales?
* Which regions have the highest profit?

### Profit Analysis

* What is the overall profit?
* What is the profit margin?
* Which products generate losses?

### Advanced SQL Analysis

* Customer ranking using window functions
* Running revenue calculations
* Top products within each category
* Top customers within each segment

---

## SQL Concepts Demonstrated

### Aggregations

* SUM()
* COUNT()
* AVG()
* ROUND()

### Grouping

* GROUP BY
* HAVING

### Sorting & Filtering

* ORDER BY
* LIMIT

### Window Functions

* RANK()
* OVER()

### Common Table Expressions

* WITH Clause (CTE)

### Date Analysis

* YEAR()
* MONTH()

---

## Key Insights

* Identified top revenue-generating customers.
* Analyzed high-performing product categories.
* Detected loss-making products affecting profitability.
* Compared regional sales and profit performance.
* Ranked customers based on lifetime value.
* Generated actionable business recommendations from sales data.

---

## Project Structure

sql-retail-sales-analytics/

├── data/

│   └── superstore.csv

├── sql/

│   ├── 01_create_tables.sql

│   ├── 02_sales_analysis.sql

│   ├── 03_customer_analysis.sql

│   ├── 04_product_analysis.sql

│   ├── 05_regional_analysis.sql

│   ├── 06_profit_analysis.sql

│   └── 07_advanced_queries.sql

├── outputs/

│   ├── screenshots/

│   └── results/

├── import_superstore.py

└── README.md

---

## Sample SQL Query

```sql
SELECT
    Customer_Name,
    ROUND(SUM(Sales),2) AS Revenue
FROM superstore
GROUP BY Customer_Name
ORDER BY Revenue DESC
LIMIT 10;
```

---

## Results

The analysis produced:

* Revenue performance reports
* Customer lifetime value rankings
* Product profitability analysis
* Regional sales dashboards
* Customer segmentation insights

---

## Future Improvements

* Build Power BI Dashboard
* Create Customer Segmentation Model
* Add RFM Analysis
* Develop Sales Forecasting Model
* Deploy Interactive Dashboard

---

## Author

Jagadeeswari S

Aspiring Data Analyst

Skills:
SQL | Python | Power BI | Machine Learning | Data Visualization

GitHub:
https://github.com/jagadeeswari-19
