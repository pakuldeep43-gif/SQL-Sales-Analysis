-- Create Table
CREATE TABLE sales_data (
    OrderID INT,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Price INT,
    Quantity INT,
    City VARCHAR(50)
);

-- Insert Data
INSERT INTO sales_data VALUES
(1, 'Laptop', 'Electronics', 50000, 1, 'Delhi'),
(2, 'Phone', 'Electronics', 20000, 2, 'Noida'),
(3, 'Shoes', 'Fashion', 3000, 3, 'Mumbai'),
(4, 'Watch', 'Accessories', 2000, 2, 'Delhi'),
(5, 'Laptop', 'Electronics', 55000, 1, 'Bangalore'),
(6, 'Shoes', 'Fashion', 3500, 2, 'Delhi');

-- Total Sales
SELECT SUM(Price * Quantity) AS Total_Sales FROM sales_data;

-- Sales by Category
SELECT Category, SUM(Price * Quantity) AS Total_Sales
FROM sales_data
GROUP BY Category;

-- Top Selling Product
SELECT Product, SUM(Quantity) AS Total_Quantity
FROM sales_data
GROUP BY Product
ORDER BY Total_Quantity DESC;

-- Sales by City
SELECT City, SUM(Price * Quantity) AS Total_Sales
FROM sales_data
GROUP BY City;

-- Average Price by Category
SELECT Category, AVG(Price) AS Avg_Price
FROM sales_data
GROUP BY Category;