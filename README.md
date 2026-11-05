
E-Commerce Customer Analytics and RFM-Based Customer Segmentation
A data analytics project developed during a six-week internship in the
Data Analytics domain at CODTECH IT Solutions Private Limited (30
May 2026 -- 11 July 2026).

Project Overview
This project analyzes e-commerce transaction data to understand customer
purchasing behaviour and identify customer groups that may require
different retention and marketing strategies. SQL Server is used for
data storage, data quality checks and preparation, while Microsoft Power
BI is used for interactive reporting.

Dataset note: This repository contains a synthetic practice
dataset of 5,000 transaction records. It is not the original UCI
Online Retail dataset and does not represent transactions from a real
company.

Objectives
Import and examine e-commerce transaction records.
Identify missing, invalid and return-related records.
Prepare a cleaned transaction table and calculate revenue.
Calculate customer-level Recency, Frequency and Monetary (RFM)
measures.
Segment customers using RFM scores.
Present customer and revenue metrics in Power BI dashboards.
Tools and Technologies
Microsoft SQL Server 2025 Express
SQL Server Management Studio (SSMS) 22
Microsoft Power BI
Dataset
The CSV file is available in the Dataset/ folder as
CustomerAnalytics_Synthetic_5000_Transactions.csv. It contains
transaction fields such as invoice number, stock code, description,
quantity, invoice date, unit price, customer ID and country.

SQL Workflow
01_Database_Creation.sql -- creates the CustomerAnalytics
database.
02_Data_Import_Verification.sql -- verifies the imported
transaction records.
03_Data_Quality_Checks.sql -- checks missing values, negative or
zero quantities, invalid prices and duplicate groups.
04_Data_Cleaning.sql -- creates the cleaned transaction table and
calculates revenue.
05_RFM_Analysis.sql -- calculates customer Recency, Frequency and
Monetary values.
06_Customer_Segmentation.sql -- assigns RFM scores and customer
segments.
07_Customer_KPI_Analysis.sql -- calculates summary customer and
revenue KPIs.
The CSV was imported into SQL Server using the SQL Server import
workflow. The verification script checks the resulting table; it is not
an automated CSV import script.

RFM Customer Segments
Champions
Loyal Customers
New Customers
Need Attention
At Risk
Lost Customers
Results
The following results were obtained from the cleaned synthetic dataset:

Measure Result

Original transaction rows 5,000
Cleaned transaction rows 4,795
Customers analyzed 419
Total revenue (dataset monetary units) 142,297.23
Average customer spending (dataset monetary units) 339.61
Average recency 61 days

Customer Segment Counts
Segment Customers

Champions 51
Loyal Customers 89
New Customers 59
Need Attention 128
At Risk 42
Lost Customers 50
Total 419

Power BI Dashboard
The Power BI report is available as Customer_Analytics_Dashboard.pbix.
It contains customer analytics and customer segmentation views,
including KPI cards, segment-level analysis, country-level revenue
analysis and customer detail views.

Repository Structure
ecommerce-customer-analytics/
├── Dataset/
│   └── CustomerAnalytics_Synthetic_5000_Transactions.csv
├── 01_Database_Creation.sql
├── 02_Data_Import_Verification.sql
├── 03_Data_Quality_Checks.sql
├── 04_Data_Cleaning.sql
├── 05_RFM_Analysis.sql
├── 06_Customer_Segmentation.sql
├── 07_Customer_KPI_Analysis.sql
├── Customer_Analytics_Dashboard.pbix
└── README.md
Internship Details
Organization: CODTECH IT Solutions Private Limited
Domain: Data Analytics
Program: Internship
Duration: 6 weeks
Internship period: 30 May 2026 -- 11 July 2026
Author
Maneesha Yavvari

Note
This repository documents an internship learning project using synthetic
transaction data. Results are specific to the supplied practice dataset
and should not be interpreted as actual business performance.

