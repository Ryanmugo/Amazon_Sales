-- CREATION OF DATABASE AND USING IT
CREATE DATABASE Amazon_Sales

-- USING DATABASE
USE Amazon_Sales
GO

-- CREATION OF VIEW

CREATE VIEW AmazonAnalysis AS 
SELECT Region, Country,Item_Type, Sales_Channel,Order_Date,Units_Sold, Unit_Price,Unit_Cost,Total_Revenue,Total_Cost,Total_Profit
FROM [Amazon_Sales].[dbo].[Amazon Sales data]
GO