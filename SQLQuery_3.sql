SELECT
    Month,
    AVG(Satisfaction_Rating) AS Average_Rating,
    COUNT(DISTINCT Customer_Id) AS Retention_Rate
FROM dbo.CustomerData
GROUP BY Month;