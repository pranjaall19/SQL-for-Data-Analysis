# 📊 Task 4 – SQL for Data Analysis

This project is part of my Data Analyst Internship. I used SQL (MySQL) to extract and analyze data from an ecommerce sales dataset.

---

## ✅ Objectives Covered

- Used SELECT, WHERE, GROUP BY, ORDER BY
- Performed JOINS (INNER, LEFT, RIGHT)
- Wrote subqueries
- Used aggregate functions like SUM() and AVG()
- Created SQL VIEW for analysis
- Added INDEX to optimize queries

---

## 🧰 Tools Used

- MySQL Workbench
- CSV Dataset: ecommerce_orders.csv

---

## 📁 All Queries

--  SELECT, WHERE, ORDER BY, GROUP BY
SELECT 
    Category,
    SUM(`Sales Amount`) AS Total_Sales,
    AVG(Profit) AS Avg_Profit
FROM ecommerce_orders
WHERE `Order Status` = 'Delivered'
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Subqueries
SELECT *
FROM ecommerce_orders
WHERE `Sales Amount` > (
    SELECT AVG(`Sales Amount`) FROM ecommerce_orders
);

-- Aggregate Functions (SUM, AVG)
SELECT 
    SUM(`Sales Amount`) AS Total_Revenue,
    AVG(Discount) AS Avg_Discount,
    SUM(Profit) AS Total_Profit
FROM ecommerce_orders;

--  Create Views for Analysis
CREATE VIEW regional_sales_summary AS
SELECT 
    Region,
    SUM(`Sales Amount`) AS Region_Sales,
    SUM(Profit) AS Region_Profit
FROM ecommerce_orders
GROUP BY Region;

-- Optimize with Index
CREATE INDEX idx_customer_name
ON ecommerce_orders (`Customer Name`);


---

## 🖼️ Sample Screenshots
![1st](https://github.com/user-attachments/assets/cfe54c80-52a6-403d-b18f-5a1864485b6c)

![2nd](https://github.com/user-attachments/assets/53724495-7af5-4737-a97f-2d4695314583)

![3rd](https://github.com/user-attachments/assets/4fb62abd-75f9-4c98-8a14-672ded23ad1d)

![4th](https://github.com/user-attachments/assets/7fbbfc4e-ea00-4ce5-a9e2-4d30734d4521)

![5th](https://github.com/user-attachments/assets/5709c336-0219-4f39-bc27-207527e0b721)


## 👨‍💻 Author

*pranjal Patil*  
Final Year B.Tech – CSE | Aspiring Data Analyst  
[LinkedIn](#) (Add your link)
