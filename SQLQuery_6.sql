SELECT Order_Id,
       CAST(shipping_date_DateOrders AS DATE) AS Shipping_Date,
       DATEPART(year, shipping_date_DateOrders) AS Shipping_Year,
       DATEPART(hour, shipping_date_DateOrders) AS Shipping_Hour,
       Days_for_shipment_scheduled,
       Days_for_shipping_real,
       DATEDIFF(day, Days_for_shipment_scheduled, Days_for_shipping_real) AS Shipping_Difference,
       Category_Name
FROM dbo.ShippingData
JOIN dbo.ProductData ON Order_Id = Order_Id
WHERE Days_for_shipment_scheduled IS NOT NULL
  AND Days_for_shipping_real > Days_for_shipment_scheduled
  AND Market = 'LATAM';