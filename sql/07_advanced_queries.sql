Customer Ranking

SELECT
Customer_Name,
SUM(Sales) AS Revenue,
RANK() OVER(
ORDER BY SUM(Sales) DESC
) AS Customer_Rank
FROM superstore
GROUP BY Customer_Name;

Running Revenue

SELECT
Order_Date,
SUM(Sales) OVER(
ORDER BY Order_Date
) AS Running_Revenue
FROM superstore;

Top Product in Each Category

WITH ProductRank AS (
SELECT
Category,
Product_Name,
SUM(Sales) AS Revenue,
RANK() OVER(
PARTITION BY Category
ORDER BY SUM(Sales) DESC
) AS Rank_No
FROM superstore
GROUP BY
Category,
Product_Name
)
SELECT *
FROM ProductRank
WHERE Rank_No = 1;

Top 5 Customers in Each Segment

WITH CustomerRank AS (
SELECT
Segment,
Customer_Name,
SUM(Sales) Revenue,
RANK() OVER(
PARTITION BY Segment
ORDER BY SUM(Sales) DESC
) AS rnk
FROM superstore
GROUP BY
Segment,
Customer_Name
)
SELECT *
FROM CustomerRank
WHERE rnk <= 5;