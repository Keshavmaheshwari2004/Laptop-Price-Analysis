SELECT * FROM sales.laptop_prices;

# Average Price by Company
SELECT Company, ROUND(AVG(Price), 2) AS Avg_Price
FROM sales.laptop_prices
GROUP BY Company
ORDER BY Avg_Price DESC;

# Most Common CPU Types
SELECT CPU, COUNT(*) AS Count
FROM sales.laptop_prices
GROUP BY CPU
ORDER BY Count DESC
LIMIT 10;

# Top 5 most common GPU
SELECT GPU, COUNT(*) AS Count
FROM sales.laptop_prices
GROUP BY GPU
ORDER BY Count DESC
LIMIT 5;


# Average Price by RAM Capacity
SELECT Ram, ROUND(AVG(Price), 2) AS Avg_Price
FROM sales.laptop_prices
GROUP BY Ram
ORDER BY Avg_Price DESC;

# Lightweight Laptops (Under 1.5 Kg)
SELECT Company, TypeName, Weight, Price
FROM sales.laptop_prices
WHERE CAST(REPLACE(REPLACE(Weight, 'Kg', ''), ' ', '') AS DECIMAL(4,2)) < 1.5;

# Price Range Summary
SELECT 
  MIN(Price) AS Min_Price, 
  MAX(Price) AS Max_Price, 
  ROUND(AVG(Price), 2) AS Avg_Price
FROM sales.laptop_prices;

