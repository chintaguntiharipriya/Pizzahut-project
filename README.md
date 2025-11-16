# 🍕 Pizza Hut Sales Analysis  
*A Data Analytics Project using SQL & Business Intelligence Dashboards*

---

## 📌 Project Description  

This repository contains a complete end-to-end analysis of **Pizza Hut sales data**, performed using **SQL** for data querying and **Tableau/Power BI** for dashboard visualization.  
The main objective of this project is to uncover customer behavior patterns, identify top-selling items, analyze revenue trends, and provide actionable business insights supported by visual analytics.

The project includes:
- Dataset exploration  
- SQL-based analysis  
- KPI extraction  
- Visual dashboards  
- Insights & business recommendations

---

## ⭐ Key Features  

- ✔ SQL-driven analysis of **21,350+ transactions**  
- ✔ Complete KPI summary (orders, revenue, averages)  
- ✔ Top/Bottom pizza performance analysis  
- ✔ Category & pizza-size trends  
- ✔ Order pattern analysis across hours of the day  
- ✔ Tableau/Power BI dashboards  
- ✔ Insights with actionable recommendations  

---

## 🧰 Tech Stack / Tools Used  

| Tool | Purpose |
|------|---------|
| **SQL (MySQL / SQLite)** | Data analysis and querying |
| **Tableau / Power BI** | Building dashboards |
| **Excel/CSV** | Data inspection |
| **PowerPoint** | Presentation of results |
| **Word/PDF** | Documentation |

---

## 📁 Folder Structure  

📦 pizzahut-analysis
│
├── data/
│ └── pizzahut_sales.csv
│
├── sql/
│ ├── basic_queries.sql
│ ├── intermediate_queries.sql
│ └── advanced_queries.sql
│
├── dashboard/
│ ├── pizzahut_tableau.twb
│ └── pizzahut_powerbi.pbix
│
├── presentation/
│ └── pizzahut.project.pptx
│
├── screenshots/
│ ├── dashboard.png
│ ├── revenue_by_category.png
│ └── top_pizzas.png
│
└── README.md

yaml
Copy code

---

## 🔧 Installation  

### **1. Clone the repository**
```bash
git clone https://github.com/your-username/pizzahut-analysis.git
cd pizzahut-analysis
2. Install an SQL Client
MySQL Workbench

SQLite Studio

DBeaver

3. (Optional) Install Tableau or Power BI
To open the dashboard files.

▶️ How to Run the Project
Step 1: Load the Dataset
Import the CSV into your SQL database:

sql
Copy code
LOAD DATA INFILE 'pizzahut_sales.csv'
INTO TABLE pizza_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 ROWS;
Step 2: Run SQL Analysis
Execute the queries from /sql/ folder:

sql
Copy code
-- Total orders
SELECT COUNT(*) FROM pizza_sales;

-- Total revenue
SELECT SUM(total_price) AS total_revenue FROM pizza_sales;
Step 3: Open Dashboards
Tableau → dashboard/pizzahut_tableau.twb

Power BI → dashboard/pizzahut_powerbi.pbix

Step 4: View Insights
Navigate through the dashboard to explore:

Top pizzas

Revenue by category

Hourly peak times

Size distribution

📄 Input Data Format
Column Name	Description
order_id	Unique transaction ID
pizza_id	Pizza identifier
pizza_name	Name of pizza
category	Pizza category (Classic, Chicken, Veg...)
size	S / M / L / XL
quantity	Number of items ordered
unit_price	Price per item
total_price	Billing amount
order_time	Timestamp of order

📤 Output Description
KPI Results
Total Orders: 21,350

Total Revenue: 817,860.05

Average Daily Orders: 138

Insights
Most expensive pizza → The Greek

Most ordered size → Large (L)

Top 5 pizzas contribute majority of sales

Chicken & Classic categories generate most revenue

Evening hours show highest order traffic

🔁 Code Workflow Explanation
sql
Copy code
Raw Data
   ↓
SQL Cleaning & Validation
   ↓
KPI Computations
   ↓
Category & Time-based Analysis
   ↓
Advanced Revenue Insights
   ↓
Visualization (Tableau / Power BI)
   ↓
Final Insights & Recommendations
Analysis Stages
1️⃣ Basic Analysis
Total orders

Revenue calculation

Pizza size popularity

Most expensive pizza

2️⃣ Intermediate Analysis
Orders by category

Top 5 pizzas

Hourly demand trend

3️⃣ Advanced Analysis
Cumulative revenue growth

Category-wise revenue contribution

Top 3 pizzas per category

🧪 Example Commands
sql
Copy code
-- Top 5 pizzas
SELECT pizza_name, SUM(quantity) AS total_qty
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_qty DESC
LIMIT 5;

-- Revenue by category
SELECT category, SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY category
ORDER BY revenue DESC;

-- Hourly order trend
SELECT HOUR(order_time) AS hour, COUNT(*) AS orders
FROM pizza_sales
GROUP BY hour
ORDER BY hour;
🖼 Screenshots (Placeholders)
Add your screenshots under /screenshots.

Dashboard Overview

Revenue by Category

Top 5 Pizzas

🚀 Future Improvements
Add complete Python EDA notebook

Build predictive models (forecasting, recommendation engine)

Create end-to-end pipeline using Airflow

Develop an interactive Streamlit web dashboard

Add anomaly detection for abnormal orders

📜 License
This project is licensed under the MIT License.
You are free to use, modify, and distribute this project with proper attribution.

🙌 Acknowledgments
Thanks to Pizza Hut dataset creators and BI tools for enabling this analysis.
Feel free to contribute or raise issues in the repository!
