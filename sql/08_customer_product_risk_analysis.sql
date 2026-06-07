-- ============================================================
-- 1. TOP 10 CUSTOMERS' SHARE OF TOTAL REVENUE
-- ============================================================

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
        SUM(CASE WHEN rn <= 10 THEN revenue ELSE 0 END)
        / SUM(revenue) * 100,
        1
    ) AS top10_revenue_share_pct
FROM ranked_customers;