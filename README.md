# Retail Sales Intelligence & Customer Analytics 📊

## 📌 Project Overview

This project focuses on analyzing retail sales, customer behavior, and product performance using **Microsoft SQL Server and Power BI**. The objective is to transform raw retail data into meaningful business insights through SQL-based data cleaning, exploratory data analysis (EDA), and interactive visualization.

The project combines SQL queries with a Power BI dashboard to monitor key performance indicators, identify high-value customers, compare product categories, analyze loyalty segments, and understand monthly sales patterns.

## 🎯 Business Objectives

The project addresses the following business questions:

1. **Sales Performance:** What are the total revenue, average order value, and transaction count?
2. **Sales Trends:** How does revenue fluctuate across different months and quarters?
3. **Customer Analysis:** Who are the highest-spending customers, and how frequently do they transact?
4. **Customer Loyalty:** Which loyalty tier contributes the most to total revenue?
5. **Product Performance:** Which categories and products perform best based on revenue and quantity sold?
6. **Business Improvement:** How can sales insights support customer retention, inventory planning, and marketing decisions?

## 🛠️ Tools & Technologies

- **Microsoft SQL Server** — Database management and data analysis
- **SQL Server Management Studio (SSMS)** — SQL query development
- **T-SQL** — Data cleaning, transformation, validation, and analysis
- **Microsoft Power BI** — Interactive dashboard development
- **DAX** — Measures and KPI calculations

## ⚙️ Project Workflow

### 1. Data Cleaning & Preparation Using SQL

The raw dataset required data quality checks and standardization before analysis.

- Standardized inconsistent gender and customer loyalty tier values.
- Removed extra whitespace and standardized email addresses.
- Handled missing customer region and product name values.
- Addressed missing prices and invalid quantity values.
- Standardized inconsistent delivery status entries.
- Validated categorical values and numerical ranges.

### 2. Exploratory Data Analysis (EDA) Using SQL

SQL queries were used to explore sales, customer, and product performance.

**Sales Analysis**
- Total sales revenue
- Revenue by region
- Monthly sales trends
- Quarterly revenue analysis

**Customer Analysis**
- Customer distribution by region
- Top 5 customers by total spending
- Transaction frequency per customer
- Revenue by loyalty tier
- Average transaction value by gender

**Product Analysis**
- Top 10 products by quantity sold
- Least-selling product
- Revenue by product category
- Average product price by category

### 3. Interactive Power BI Dashboard

The Power BI dashboard presents key business metrics and analytical results in a single view.

**Key Performance Indicators**
- Average Order Value (AOV)
- Total Revenue
- Transaction Count
- Active Customers

**Visualizations**
- **High-Value Customer Table:** Displays customer IDs, total spending, and transaction counts.
- **Sales Performance by Category:** Compares revenue across product categories.
- **Customer Value by Loyalty Status:** Shows the revenue contribution of different loyalty tiers.
- **Monthly Sales Trend:** Displays monthly revenue fluctuations for 2024.
- **Top 5 Best-Selling Products:** Compares the quantities sold for leading products.

**Interactive Features**
- Region slicer for geographical analysis.
- Gender slicer for customer segmentation.
- Reset Filters button to restore the default dashboard view.

## 📸 Dashboard Preview

![Retail Sales Intelligence and Customer Analytics Dashboard](Dashboard.png)

*Power BI dashboard featuring sales KPIs, customer spending, category performance, loyalty analysis, monthly sales trends, and product quantities.*

## 💡 Key Insights & Business Recommendations

The following observations are based on the values displayed in the dashboard screenshot.

### 1. Overall Sales Performance
- **Total Revenue:** Approximately $86.37K
- **Average Order Value:** $28.94
- **Transaction Count:** Approximately 3K
- **Active Customers:** 487

**Recommendation:** Monitor these KPIs regularly to evaluate business performance and identify changes in customer activity.

### 2. Product Category Performance
- Cleaning is the leading category, generating approximately **$34K** in displayed revenue.
- Storage contributes approximately $17K.
- Outdoors, Kitchen, and Personal Care contribute comparatively lower revenue.

**Recommendation:** Review demand and stock availability for leading products while exploring promotional opportunities for other categories.

### 3. Customer Loyalty Analysis
- Gold-tier customers contribute approximately **$48.01K**, representing **57.13%** of the displayed total revenue.

**Recommendation:** Develop customer retention initiatives for Gold members and targeted engagement campaigns for other loyalty segments.

### 4. Monthly Sales Trends
- February records the highest displayed monthly revenue, at approximately **$8.1K**.
- December records approximately **$6.5K**.

**Recommendation:** Investigate seasonal demand and promotional performance to identify opportunities to improve sales during weaker periods.

### 5. Product Demand Analysis
The dashboard compares the quantities sold for five leading products, helping identify high-demand items.

**Recommendation:** Use product-level demand patterns to support inventory planning and promotional decisions.

*Note: Values are rounded as displayed in the dashboard. Validate them against the underlying data and Power BI measures before using them in formal reporting.*

## 📂 Repository Structure

```text
Retail-Sales-Intelligence-SQL/
│
├── README.md
├── 01_Data_Cleaning.sql
├── 02_Retail_Sales_Customer_Analysis.sql
├── Dashboard.png
└── PowerBI/
    └── Dashboard.pbix
```

- **`01_Data_Cleaning.sql`** — SQL scripts for data cleaning, standardization, and validation.
- **`02_Retail_Sales_Customer_Analysis.sql`** — SQL queries for sales, customer, and product analysis.
- **`Dashboard.png`** — Power BI dashboard screenshot.
- **`PowerBI/Dashboard.pbix`** — Interactive Power BI report file, if included.
- **`README.md`** — Project documentation and analytical findings.

## 🚀 How to Run the Project

### SQL Scripts

1. Install Microsoft SQL Server and SQL Server Management Studio.
2. Import the required dataset and create the necessary tables.
3. Select the correct database in SSMS.
4. Execute `01_Data_Cleaning.sql` first.
5. Execute `02_Retail_Sales_Customer_Analysis.sql`.
6. Review the query results to explore the findings.

### Power BI Dashboard

1. Open `Dashboard.pbix` in Power BI Desktop.
2. Configure the data source to match your local SQL Server or dataset.
3. Refresh the data if required.
4. Use the region and gender slicers to explore different customer segments.
5. Select **Reset Filters** to restore the default view.

**Important:** Run the cleaning script on a copy of the original dataset because some SQL statements modify or delete records.

## 📚 Key Learnings

- SQL-based data cleaning and data quality validation
- Exploratory data analysis using T-SQL
- Aggregate functions, joins, CTEs, and date functions
- Customer segmentation and product performance analysis
- Power BI dashboard design and KPI reporting
- Translating analytical results into business recommendations

## 🏁 Conclusion

This project demonstrates how SQL and Power BI can work together to transform retail data into actionable business information. SQL supports data preparation and analysis, while Power BI presents the findings through interactive visualizations that help users understand sales performance, customer value, loyalty contribution, and product demand.

## 👨‍💻 Author

**Pruthviraj Shirke**

**Skills:** SQL | Microsoft SQL Server | Power BI | Data Analytics

