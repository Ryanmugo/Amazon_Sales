/*

DATA TESING:

1.) No. of ROWS
2.) No. of COLUMNS
3.) DATA TYPES.

*/


USE Amazon_Sales
GO 

-- 1. Checking No. of ROWS
SELECT COUNT(*) AS no_of_rows
FROM AmazonAnalysis


-- 2. Checking No. of COLUMNS
SELECT COUNT(*) AS no_of_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'AmazonAnalysis'


-- 3. Checking DATA Types
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'AmazonAnalysis'