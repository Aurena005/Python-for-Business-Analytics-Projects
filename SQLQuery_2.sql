SELECT
    Category_Name,
    AVG(Order_Item_Product_Price) AS Average_Price,
    SUM(Sales) AS Total_Sales
FROM dbo.OrderData
JOIN dbo.ProductData ON Order_Id = Order_Id
GROUP BY Category_Name;