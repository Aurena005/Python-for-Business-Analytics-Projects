SELECT Category_Name,
       Days_for_shipment_scheduled,
       Days_for_shipping_real
FROM dbo.ShippingData
JOIN dbo.ProductData ON Order_Id = Order_Id;