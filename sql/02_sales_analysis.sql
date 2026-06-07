Total Sales

SELECT
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore;

Total Orders

SELECT
COUNT(DISTINCT Order_ID) AS Total_Orders
FROM superstore;

Average Order Value

SELECT
ROUND(
SUM(Sales) /
COUNT(DISTINCT Order_ID),
2
) AS Avg_Order_Value
FROM superstore;

Monthly Sales Trend

SELECT
YEAR(Order_Date) AS Year,
MONTH(Order_Date) AS Month,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore
GROUP BY
YEAR(Order_Date),
MONTH(Order_Date)
ORDER BY
Year,
Month;