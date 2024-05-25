SELECT
    Category_Name,
    AVG(CAST(DATEDIFF(day, Days_for_shipment_scheduled, Days_for_shipping_real) AS FLOAT)) AS Average_Delay,
    COUNT(*) AS Total_Orders
FROM dbo.ShippingData
JOIN dbo.ProductData ON Order_Id = Order_Id
GROUP BY Category_Name;