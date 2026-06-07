Sales by Region

SELECT
Region,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore
GROUP BY Region
ORDER BY Revenue DESC;

Profit by Region

SELECT
Region,
ROUND(SUM(Profit),2) AS Profit
FROM superstore
GROUP BY Region
ORDER BY Profit DESC;

Top States

SELECT
State,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore
GROUP BY State
ORDER BY Revenue DESC
LIMIT 10;