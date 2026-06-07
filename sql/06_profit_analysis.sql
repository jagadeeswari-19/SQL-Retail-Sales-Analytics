Overall Profit

SELECT
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore;

Profit Margin

SELECT
ROUND(
(SUM(Profit)/SUM(Sales))*100,
2
) AS Profit_Margin
FROM superstore;

Loss Making Products

SELECT
Product_Name,
ROUND(SUM(Profit),2) AS Loss
FROM superstore
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Loss;