USE CustomerAnalytics;
GO

DECLARE @SnapshotDate DATE;

SELECT @SnapshotDate = DATEADD(DAY, 1, MAX(InvoiceDate))
FROM dbo.OnlineRetail_Clean;

SELECT
    Customer_ID,
    DATEDIFF(
        DAY,
        MAX(InvoiceDate),
        @SnapshotDate
    ) AS Recency,

    COUNT(DISTINCT Invoice) AS Frequency,

    CAST(SUM(Revenue) AS DECIMAL(12,2)) AS Monetary

INTO dbo.Customer_RFM

FROM dbo.OnlineRetail_Clean
GROUP BY Customer_ID;
GO

-- Display RFM results
SELECT *
FROM dbo.Customer_RFM
ORDER BY Monetary DESC;