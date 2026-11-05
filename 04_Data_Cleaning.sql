USE CustomerAnalytics;
GO

SELECT
    Invoice,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    Price,
    Customer_ID,
    Country,
    CAST(Quantity * Price AS DECIMAL(12,2)) AS Revenue
INTO dbo.OnlineRetail_Clean
FROM dbo.OnlineRetail
WHERE
    Customer_ID IS NOT NULL
    AND Description IS NOT NULL
    AND Quantity > 0
    AND Price > 0;
GO

-- Check cleaned records
SELECT COUNT(*) AS Cleaned_Records
FROM dbo.OnlineRetail_Clean;