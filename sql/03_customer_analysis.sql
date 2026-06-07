Top 10 Customers

SELECT
Customer_Name,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore
GROUP BY Customer_Name
ORDER BY Revenue DESC
LIMIT 10;

Customer Lifetime Value

SELECT
Customer_Name,
COUNT(DISTINCT Order_ID) AS Orders_Count,
ROUND(SUM(Sales),2) AS CLV
FROM superstore
GROUP BY Customer_Name
ORDER BY CLV DESC;

Top Customer Segments

SELECT
Segment,
ROUND(SUM(Sales),2) AS Revenue,
ROUND(SUM(Profit),2) AS Profit
FROM superstore
GROUP BY Segment;