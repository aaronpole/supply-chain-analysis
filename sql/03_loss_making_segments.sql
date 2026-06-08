-- Extract loss-making region, ship mode and product combinations

SELECT
    Region,
    Ship_Mode,
    Sub_Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore_clean
GROUP BY Region, Ship_Mode, Sub_Category
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;
