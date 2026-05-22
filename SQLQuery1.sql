SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM Superstore;
SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT TOP 10
    Product_Name,
    SUM(Sales) AS Revenue
FROM Superstore
GROUP BY Product_Name
ORDER BY Revenue DESC;
SELECT TOP 10
    Product_Name,
    SUM(Profit) AS Total_Loss
FROM Superstore
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Loss;
SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Monthly_Sales
FROM Superstore
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;
SELECT
    Discount,
    AVG(Profit) AS Avg_Profit
FROM Superstore
GROUP BY Discount
ORDER BY Discount;
SELECT TOP 10
    State,
    SUM(Sales) AS Revenue,
    SUM(Profit) AS Profit
FROM Superstore
GROUP BY State
ORDER BY Revenue DESC;
SELECT TOP 10
    State,
    SUM(Profit) AS Profit
FROM Superstore
GROUP BY State
ORDER BY Profit ASC;