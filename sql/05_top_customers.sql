-- Extract top 10 customers by revenue and mark profit status

SELECT
    Customer_Name,
    ROUND(SUM(Sales),2) AS Revenue,
    ROUND(SUM(Profit),2) AS Profit,
    CASE
        WHEN SUM(Profit) > 0 THEN 'Profitable'
        ELSE 'Loss'
    END AS Profit_Flag
FROM superstore_clean
GROUP BY Customer_Name
ORDER BY Revenue DESC
LIMIT 10;
