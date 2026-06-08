-- Extract monthly revenue trend from order data

SELECT
    SUBSTR(Order_Date, 7, 4) || '-' || SUBSTR(Order_Date, 4, 2) AS Year_Month,
    ROUND(SUM(Sales),2) AS Revenue
FROM superstore_clean
GROUP BY Year_Month
ORDER BY Year_Month;
