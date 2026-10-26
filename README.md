## Retail Sales Intelligence and customers insight using SQL and POWER BI

## Project Overview
This project focuses on analyzing retail sales data using Microsoft SQL Server to identify sales trends, customer purchasing patterns, and product performance. It includes data cleaning, data standardization, data validation, and SQL-based business analysis to generate meaningful insights for data-driven decision-making.

## Objectives
- Clean and standardize customer, product, and sales data.
- Analyze total sales revenue and regional sales performance.
- Identify top customers and understand customer purchasing behavior.
- Evaluate sales contribution by customer loyalty tier and gender.
- Analyze top-selling products and product category performance.
- Examine product pricing across different categories.

## Tools & Technologies
- **Database:** Microsoft SQL Server
- **Query Language:** SQL
- **Key SQL Concepts:** Aggregate Functions, JOINs, GROUP BY, ORDER BY, CTEs, CASE Statements, Date Functions, and Subqueries

## Project Structure
- `Data Cleaning SQL script.sql` — Handles missing values, inconsistent formats, data standardization, and data validation.
- `Sql Customer insights.sql` — Covers sales performance, customer insights, and product analysis.

## Data Cleaning
The data cleaning process includes:
- Standardizing gender values and customer loyalty tiers.
- Trimming whitespace and converting email addresses to lowercase.
- Handling missing customer regions and product names.
- Correcting inconsistent delivery status values.
- Handling missing or invalid quantities and missing unit prices.
- Removing sales records with missing order dates.
- Verifying data quality using distinct values and minimum/maximum checks.

## SQL Analysis

### 1. Sales Analysis
- Total sales revenue
- Sales revenue by region
- Monthly sales trends
- Quarterly revenue analysis

### 2. Customer Insights
- Customer distribution by region
- Top 5 customers by spending
- Customer transaction frequency
- Revenue by loyalty tier
- Average transaction value by gender

### 3. Product Analysis
- Top 10 products by quantity sold
- Least-selling product
- Revenue by product category
- Average product price by category

## Key Learnings
- Practiced data cleaning and data quality validation using SQL.
- Applied JOINs to combine customer, product, and sales tables.
- Used aggregate functions to summarize business data.
- Applied CTEs and date functions to solve analytical questions.
- Developed SQL queries to support retail business analysis.

## How to Run the Project
1. Open Microsoft SQL Server Management Studio (SSMS).
2. Create or select the database containing the project tables.
3. Import the required datasets into the database.
4. Execute the data cleaning script.
5. Execute the sales and customer insights analysis script.
6. Review the query results to explore business performance.

## Conclusion
This project demonstrates the application of SQL in data cleaning, data validation, and retail business analysis. It provides practical experience in transforming raw data into structured information for understanding sales performance, customer behavior, and product trends.
