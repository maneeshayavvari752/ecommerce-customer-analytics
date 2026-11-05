USE CustomerAnalytics;
GO

WITH RFM_Scores AS
(
    SELECT
        Customer_ID,
        Recency,
        Frequency,
        Monetary,

        NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
        NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,
        NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score

    FROM dbo.Customer_RFM
)

SELECT
    *,
    CASE
        WHEN R_Score >= 4 AND F_Score >= 4 AND M_Score >= 4
            THEN 'Champions'

        WHEN F_Score >= 4 AND M_Score >= 3
            THEN 'Loyal Customers'

        WHEN R_Score >= 4 AND F_Score <= 2
            THEN 'New Customers'

        WHEN R_Score <= 2 AND F_Score >= 3
            THEN 'At Risk'

        WHEN R_Score = 1 AND F_Score <= 2
            THEN 'Lost Customers'

        ELSE 'Need Attention'
    END AS Customer_Segment

INTO dbo.Customer_RFM_Segments

FROM RFM_Scores;
GO

SELECT *
FROM dbo.Customer_RFM_Segments;