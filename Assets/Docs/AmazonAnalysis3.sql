/*


  Analysis Questions To Answer:

  1. Which region generated the most sales and profits, categorized by sales channel (offline and online)?
  2. Which item type generated the most sales and profits, categorized by sales channel (offline and online)?
  3. What is the total sales value in the dataset?
  4. What is the total profit value in the dataset?
  5. What are the annual sales trends?
  6. Which item type generated the most sales in each region, categorized by sales channel (offline and online) for each year?


*/
USE Amazon_Sales
GO


-- Question 1: Which region generated the most sales and profits, categorized by sales channel (offline and online)?

-- Query For NEITHER Offline And Online
SELECT Region,
        ROUND(SUM(CAST(Total_Revenue AS DECIMAL(10,2))), 2) AS TotalSales, 
        ROUND(SUM(CAST(Total_Profit AS DECIMAL(10,2))), 2) AS TotalProfits
FROM 
  AmazonAnalysis
GROUP BY 
  Region
ORDER BY
  TotalSales DESC,
  TotalProfits ASC

-- Query for OfflineSales
SELECT Region,
        Sales_Channel,
        ROUND(SUM(CAST(Total_Revenue AS DECIMAL(10,2))), 2) AS TotalSales, 
        ROUND(SUM(CAST(Total_Profit AS DECIMAL(10,2))), 2) AS TotalProfits
FROM 
  AmazonAnalysis
WHERE 
  Sales_Channel = 'Offline'
GROUP BY 
  Region,Sales_Channel
ORDER BY
  TotalSales DESC,
  TotalProfits ASC


-- Query for OnlineSales
SELECT Region,
        Sales_Channel,
        ROUND(SUM(CAST(Total_Revenue AS DECIMAL(10,2))), 2) AS TotalSales, 
        ROUND(SUM(CAST(Total_Profit AS DECIMAL(10,2))), 2) AS TotalProfits
FROM 
  AmazonAnalysis
WHERE 
  Sales_Channel = 'Online'
GROUP BY 
  Region,Sales_Channel
ORDER BY
  TotalSales DESC,
  TotalProfits ASC


-- Question 2: Which item type generated the most sales and profits, categorized by sales channel (offline and online)?

-- Query for NEITHER OfflineSales NOR OnlineSales
SELECT Item_Type,
        ROUND(SUM(CAST(Total_Revenue AS DECIMAL(10,2))), 2) AS TotalSales, 
        ROUND(SUM(CAST(Total_Profit AS DECIMAL(10,2))), 2) AS TotalProfits
FROM 
  AmazonAnalysis
GROUP BY 
  Item_Type
ORDER BY
  TotalSales DESC,
  TotalProfits ASC

-- Query for OfflineSales
SELECT Item_Type,
        Sales_Channel,
        ROUND(SUM(CAST(Total_Revenue AS DECIMAL(10,2))), 2) AS TotalSales, 
        ROUND(SUM(CAST(Total_Profit AS DECIMAL(10,2))), 2) AS TotalProfits
FROM 
  AmazonAnalysis
WHERE 
  Sales_Channel = 'Offline'
GROUP BY 
  Item_Type,Sales_Channel
ORDER BY
  TotalSales DESC,
  TotalProfits ASC


-- Query for OnlineSales
SELECT Item_Type,
        Sales_Channel,
        ROUND(SUM(CAST(Total_Revenue AS DECIMAL(10,2))), 2) AS TotalSales, 
        ROUND(SUM(CAST(Total_Profit AS DECIMAL(10,2))), 2) AS TotalProfits
FROM 
  AmazonAnalysis
WHERE 
  Sales_Channel = 'Online'
GROUP BY 
  Item_Type,Sales_Channel
ORDER BY
  TotalSales DESC,
  TotalProfits ASC


-- Question 3: What is the total sales value in the dataset?

SELECT 
  ROUND(SUM(CAST(Total_Revenue AS DECIMAL(10,2))), 2) AS TotalSales
FROM 
  AmazonAnalysis


-- Question 4:  What is the total profit value in the dataset?
SELECT 
  ROUND(SUM(CAST(Total_Profit AS DECIMAL(10,2))), 2) AS TotalProfits
FROM 
  AmazonAnalysis



-- Question 5. What are the annual  sales trends?
 
SELECT 
  FORMAT(Order_Date, 'yyyy') AS yearly_sales,
  ROUND(SUM(CAST(Total_Revenue AS DECIMAL(10,2))), 2) AS TotalSales
FROM 
  AmazonAnalysis
GROUP BY 
  FORMAT(Order_Date, 'yyyy')
ORDER BY 
  yearly_sales ASC  



-- Question 6. Which item type generated the most sales in each region, categorized by sales channel (offline and online) for each year?

-- Query for NEITHER OfflineSales NOR OnlineSales    
SELECT 
    Item_Type,
    FORMAT(Order_Date, 'yyyy') AS Order_Year,
    Region,
    ROUND(SUM(CAST(Total_Revenue AS DECIMAL(10,2))), 2) AS TotalSales
FROM 
    AmazonAnalysis
GROUP BY 
    Region,FORMAT(Order_Date, 'yyyy'), Item_Type
ORDER BY 
    TotalSales DESC, Order_Year ASC

-- Query for OfflineSales    
SELECT 
    Item_Type,
    FORMAT(Order_Date, 'yyyy') AS Order_Year,
    Region,
    Sales_Channel,
    ROUND(SUM(CAST(Total_Revenue AS DECIMAL(10,2))), 2) AS TotalSales
FROM 
    AmazonAnalysis
WHERE 
    Sales_Channel = 'Offline'
GROUP BY 
    Region, Sales_Channel, FORMAT(Order_Date, 'yyyy'), Item_Type
ORDER BY 
    TotalSales DESC, Order_Year ASC


-- Query for OnlineSales    
SELECT 
    Item_Type,
    FORMAT(Order_Date, 'yyyy') AS Order_Year,
    Region,
    Sales_Channel,
    ROUND(SUM(CAST(Total_Revenue AS DECIMAL(10,2))), 2) AS TotalSales
FROM 
    AmazonAnalysis
WHERE 
    Sales_Channel = 'Online'
GROUP BY 
    Region, Sales_Channel, FORMAT(Order_Date, 'yyyy'), Item_Type
ORDER BY 
    TotalSales DESC, Order_Year ASC