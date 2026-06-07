Top Selling Products

SELECT
Product_Name,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;

Most Ordered Products

SELECT
Product_Name,
SUM(Quantity) AS Units_Sold
FROM superstore
GROUP BY Product_Name
ORDER BY Units_Sold DESC
LIMIT 10;

Category Performance

SELECT
Category,
ROUND(SUM(Sales),2) AS Revenue,
ROUND(SUM(Profit),2) AS Profit
FROM superstore
GROUP BY Category;

Subcategory Performance

SELECT
Sub_Category,
ROUND(SUM(Sales),2) AS Revenue,
ROUND(SUM(Profit),2) AS Profit
FROM superstore
GROUP BY Sub_Category
ORDER BY Revenue DESC;