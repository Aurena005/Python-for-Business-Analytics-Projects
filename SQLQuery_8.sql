SELECT TOP 5 Order_Country, SUM(Sales) AS Total_Sales
FROM dbo.OrderData
GROUP BY Order_Country
ORDER BY Total_Sales DESC;