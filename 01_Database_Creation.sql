USE CustomerAnalytics;
GO

-- Customer count and revenue by segment
SELECT
    Customer_Segment,
    COUNT(*) AS Total_Customers,
    SUM(Monetary) AS Total_Revenue,
    AVG(Monetary) AS Average_Spending
FROM dbo.Customer_RFM_Segments
GROUP BY Customer_Segment
ORDER BY Total_Revenue DESC;
GO

-- Overall project KPIs
SELECT
    COUNT(*) AS Total_Customers,
    SUM(Monetary) AS Total_Revenue,
    AVG(Monetary) AS Average_Customer_Spending,
    AVG(Recency) AS Average_Recency
FROM dbo.Customer_RFM_Segments;