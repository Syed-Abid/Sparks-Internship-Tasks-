SELECT *
FROM dbo.SampleSuperstore$

--Profits that are graeter than 50.00
SELECT Profit
FROM dbo.SampleSuperstore$
WHERE Profit > 50.00
ORDER BY Profit ASC;

--Sales of City and States that are less than and equal to Average sales
SELECT Sales, State, City, AVG(Sales) AS AvgSale
FROM dbo.SampleSuperstore$
GROUP BY State, City, Sales
HAVING Sales <= AVG(Sales)
ORDER BY Sales DESC;

--Sales of City,Category and Sub-Category that are less than and equal to Average sales
SELECT Sales,City,Category,[Sub-Category], AVG(Sales) AS AvgSale
FROM dbo.SampleSuperstore$
GROUP BY City, Category,[Sub-Category], Sales
HAVING Sales <= AVG(Sales)
ORDER BY AvgSale ASC;

-- Which amount of discount brings more sales(use it for dashboard)
SELECT Discount, SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore$
GROUP BY Discount
ORDER BY TotalSales DESC;

-- Which Category and it's Sub-Category bring more sales? (Use if for dashboard)
SELECT Category, [Sub-Category], SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore$
GROUP BY Category, [Sub-Category]
ORDER BY TotalSales DESC;

--Which City and State has highest sale in Technology Category and Phones Subcategory ( Use it for dashboard)
SELECT City,State,Category,[Sub-Category], SUM(Sales) AS TotalSales 
FROM dbo.SampleSuperstore$
WHERE Category = 'Technology' AND [Sub-Category] = 'Phones'
GROUP BY City, State, Category, [Sub-Category]
ORDER BY TotalSales DESC;

-- Which Ship Mode is the most used ( Use if for dashboard)
SELECT DISTINCT([Ship Mode]),COUNT([Ship Mode])
FROM dbo.SampleSuperstore$
GROUP BY [Ship Mode]
ORDER BY [Ship Mode] DESC;

-- Which segment bring most of the sales (Use if for dashboard)
SELECT Segment, SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore$
GROUP BY Segment
ORDER BY TotalSales;

-- Which category and Subcategory gets most of the profits according to their location ( use if for dashboard)
SELECT State, City,Category, [Sub-Category], SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore$
GROUP BY Category, [Sub-Category], State, City
ORDER BY TotalProfit DESC;
