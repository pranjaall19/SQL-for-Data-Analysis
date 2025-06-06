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

