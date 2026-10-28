# 🍕 Pizza Sales Analysis & Dashboard (2015)

## 📌 Project Overview
An end-to-end data analytics project analyzing pizza sales data for the year 2015 (Jan 2015 – Dec 2015). This project focuses on extracting Key Performance Indicators (KPIs), discovering sales patterns, and presenting actionable insights through **SQL Server** for data querying, **Microsoft Excel** for initial data inspection, and **Power BI** for building an interactive visual dashboard.

---

## 🖥️ Dashboard Screenshots

### 1. Main Dashboard - Performance & Trends Overview
![Main Dashboard](Screenshot%20For%20Pizza_sales%20Dashboard.png)

### 2. Best & Worst Sellers Analysis
![Best and Worst Sellers](Screenshot%20For%20Pizza_sales%20Dashboard%202.png)

---

## 📊 Key Performance Indicators (KPIs)
* **Total Revenue:** $817,860
* **Total Orders:** 21,350
* **Total Pizzas Sold:** 49,574
* **Average Order Value (AOV):** $38.31
* **Average Pizzas Per Order:** 2.32

---

## 🛠️ Tools & Technologies Used

### 1. 🛢️ SQL Server (Data Extraction & Analysis)
* Used for data querying, aggregation, and verifying business metrics.
* Calculated total revenue, total orders, and total quantities sold.
* Analyzed daily and monthly sales trends.
* Extracted the Top 5 and Bottom 5 pizza performers based on revenue, quantity, and total orders.

### 2. 📊 Power BI (Visual Reporting & DAX)
* Used to design an interactive multi-page dashboard to support decision-making.
* Built dynamic visual layouts to display trends, distributions, and category breakdowns.
* Implemented DAX measures for KPI calculations and dynamic aggregation.
* Added interactive slicers for date ranges, pizza categories, and sizes.

### 3. 📑 Microsoft Excel (Data Exploration & Inspection)
* Used for initial data preprocessing and sanity checks on `pizza_sales_excel_file.csv`.
* Inspected dataset structure and verified field data types.
* Performed quick data validations prior to loading into SQL Server.

---

## 💡 Key Insights & Findings (2015 Data)
* **Peak Ordering Times:** Orders peak during Friday and Saturday evenings, while May and July recorded the highest order volumes of the year.
* **Category & Size Performance:**
  * **Classic Category** is the most sold category by quantity (14,888 units).
  * **Large Size** pizzas generated the highest percentage of sales (45.89%).
* **Top & Bottom Performers:**
  * **Top Revenue Generator:** The Thai Chicken Pizza ($43,434).
  * **Top Quantity & Orders:** The Classic Deluxe Pizza (2,453 sold across 2,329 orders).
  * **Lowest Performer:** The Brie Carre Pizza (Lowest in revenue, quantity, and total orders).

---

## 📁 Repository Structure
```text
├── pizza_sales_excel_file.csv             # Raw Sales Dataset (2015)
├── Pizza Sales SQL Queries.sql            # SQL Script for KPIs & Analysis
├── Power BI Dax.docx                      # Documentation of DAX Formulas
├── Pizza_sales.pbix                       # Interactive Power BI Dashboard
├── Screenshot For Pizza_sales Dashboard.png  # Overview Dashboard Image
├── Screenshot For Pizza_sales Dashboard 2.png # Best/Worst Sellers Dashboard Image
└── README.md                              # Project Documentation