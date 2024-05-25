SELECT TOP 5 Category_Name, SUM(Sales) AS Total_Sales
FROM dbo.OrderData
JOIN dbo.ProductData ON Order_Id = Order_Id
GROUP BY Category_Name
ORDER BY Total_Sales DESC;