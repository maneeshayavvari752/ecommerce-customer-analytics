USE CustomerAnalytics;
GO

-- 1. Check total records
SELECT COUNT(*) AS Total_Records
FROM dbo.OnlineRetail;

-- 2. Check missing Customer IDs
SELECT COUNT(*) AS Missing_Customer_IDs
FROM dbo.OnlineRetail
WHERE Customer_ID IS NULL;

-- 3. Check missing descriptions
SELECT COUNT(*) AS Missing_Descriptions
FROM dbo.OnlineRetail
WHERE Description IS NULL;

-- 4. Check negative quantities (returns)
SELECT COUNT(*) AS Negative_Quantities
FROM dbo.OnlineRetail
WHERE Quantity < 0;

-- 5. Check zero quantities
SELECT COUNT(*) AS Zero_Quantities
FROM dbo.OnlineRetail
WHERE Quantity = 0;

-- 6. Check invalid prices
SELECT COUNT(*) AS Invalid_Prices
FROM dbo.OnlineRetail
WHERE Price <= 0;

-- 7. Check duplicate records
SELECT COUNT(*) AS Duplicate_Groups
FROM (
    SELECT Invoice, StockCode, Description,
           Quantity, InvoiceDate, Price,
           Customer_ID, Country
    FROM dbo.OnlineRetail
    GROUP BY Invoice, StockCode, Description,
             Quantity, InvoiceDate, Price,
             Customer_ID, Country
    HAVING COUNT(*) > 1
) AS Duplicates;