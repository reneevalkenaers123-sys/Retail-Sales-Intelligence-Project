-- Total sales
SELECT SUM(Sales) AS total_sales
FROM sales_data;

-- Sales by category
SELECT Category, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Category
ORDER BY total_sales DESC;

-- Sales by region
SELECT Region, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Region
ORDER BY total_sales DESC;

-- Top products
SELECT Product, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Product
ORDER BY total_sales DESC;

-- Average sales
SELECT AVG(Sales) AS average_sales
FROM sales_data;
