-- Extract profit margin by category and region

SELECT
    Category,
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND((SUM(Profit) * 100.0 / SUM(Sales)),2) AS Profit_Margin_Percent
FROM superstore_clean
GROUP BY Category, Region
ORDER BY Profit_Margin_Percent DESC;
