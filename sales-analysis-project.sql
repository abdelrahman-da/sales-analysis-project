-- ================= KPI QUESTIONS =================

-- 1. What is the total sales?
SELECT SUM(Sales) AS Total_Sales
FROM SampleSuperstore;


-- 2. What is the total profit?
SELECT SUM(Profit) AS Total_Profit
FROM SampleSuperstore;


-- 3. What is the total number of orders?
SELECT COUNT(*) AS Total_Orders
FROM SampleSuperstore;


-- 4. What is the average profit?
SELECT AVG(Profit) AS Avg_Profit
FROM SampleSuperstore;


-- 5. What is the total quantity sold?
SELECT SUM(Quantity) AS Total_Quantity
FROM SampleSuperstore;


-- ================= ANALYSIS QUESTIONS =================

-- 6. What are the top selling sub-categories?
SELECT TOP 10 Sub_Category, SUM(Sales) AS Total_Sales
FROM SampleSuperstore
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;


-- 7. What are the most profitable sub-categories?
SELECT TOP 10 Sub_Category, SUM(Profit) AS Total_Profit
FROM SampleSuperstore
GROUP BY Sub_Category
ORDER BY Total_Profit DESC;


-- 8. Which sub-categories generate the most losses?
SELECT Sub_Category, SUM(Profit) AS Total_Profit
FROM SampleSuperstore
GROUP BY Sub_Category
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;


-- 9. What are total sales by category?
SELECT Category, SUM(Sales) AS Total_Sales
FROM SampleSuperstore
GROUP BY Category;


-- 10. What are total sales and profit by region?
SELECT Region, 
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM SampleSuperstore
GROUP BY Region;