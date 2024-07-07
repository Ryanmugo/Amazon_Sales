# Amazon Sales Data Portfolio

![excel-to-powerbi-image](Assets/images/amazon.png)


***Hey there!*** 

- I'm excited to share with you this comprehensive analysis of Amazon sales data, transitioning from Excel to Power BI. This project aims to provide valuable insights into various aspects of sales performance within Amazon by leveraging the powerful visualization and analytical capabilities of Power BI.

## Problem Statement

- As Amazon continues to grow, managing and analyzing vast amounts of sales data has become increasingly challenging. The traditional method of using Excel for data analysis has proven to be insufficient for handling large datasets and generating actionable insights efficiently. Key area such as regional sales performance, item-wise sales, profit analysis and annual sales trends require a more robust and dynamic tool to uncover deeper insights and facilitate data-driven decision-making.

## Ideal Solution 

- To address these challenges, transitioning from Excel to Power BI offers an ideal solution. Power BI's advanced data processing capabilities, interactive visualizations and user-friendly interface enable comprehensive analysis and real-time reporting. Additionally, SQL was utilized for data manipulation and extraction, ensuring a more structured and efficient data handling process. 

- With Power BI, we can:

***1. Visualize Regional Sales and Profits:***

- Identify which region generated the most sales and profits, categorized by sales channel (offline and online).

***2. Analyze Item Type Performance:***

- Determine which item type generated the most sales and profits, categorized by sales channel (offline and online).

***3. Summarize Key Metrics:***

- Display the total sales value and total profit value in the dataset through clear and concise visuals.

***4. Examine Annual Sales Trends:***

- Track and analyze sales trends over the years to understand growth patterns and seasonal variations.

***5. Detailed Item Type Analysis by Region and Year:****

- Identify the item type that generated the most sales in each region, categorized by sales channel (offline and online) for each year.


By leveraging Power BI's capabilities and SQL for data processing, we can transform Amazon's sales data into a powerful tool for strategic planning and performance improvement. This project showcases the transition process and the resulting insights that drive better business decisions.

## Data Source

- Our database is available at this [this link](Assets/Docs/Amazon_Sales_data.csv)

## Stages of the Amazon Sales Data Analysis Project

- Transitioning from Excel to SQL to PowerBI involves several key stages, each critical to achieving a comprehensive and insightful analysis. Here's a breakdown of the stages:

   ### 1. Design

   - ***Objective Setting***: Clearly define the goals of the analysis. For example, understanding regional sales performance, item-wise sales and annual sales trends.
     
   - ***Data Requirements:*** Identify the necessary data fields and structure needed for the analysis. This includes specifying columns like 'Region', 'Sales Channel', 'Item Type', 'Sales', 'Profit' and 'Year'.

   - ***Database Schema Design:***  Plan how the data will be stored and organized in SQL. Create an entity-relationship diagram (ERD) if needed.

   ## 2. Development

   - ***Data Extraction and Transformation:*** Extract data from Excel and transform it into a suitable format for SQL. This may involve cleaning the data, handling missing values and normalizing data fields.
     
   - ***SQL Database Setup:*** Create tables and relationships in SQL to store the cleaned data. Load the transformed data int these tables.

   - ***SQL Queries:*** Write SQL queries to aggregate and prepare the data for analysis in Power BI. This includes queries to calculate total sales, profits and other key metrics.
 
   - ***Data Integration:*** Connect Power BI to the SQL database to pull the required data for visualization.
 
   ## 3. Testing

    - ***Data Validation:*** Ensure that the data loaded into SQL is accurate and consistent with the original Excel data. Validate SQL queries to ensure they return the expected results.
 
    - ***Performance Testing:*** Test the performance of SQL queries and Power BI reports to ensure they run efficiently, especially with large datasets.
 
    - ***User Acceptance Testing (UAT):*** Share preliminary reports with stakeholders to gather feedback and make necessary adjustments.
 
   ## 4. Analysis

    - ***Creating Visualizations in Power BI:*** Develop various visualizations to answer the key questions.
 
    - ***Interactive Dashboards:*** Combine the visualizations into a single, interactive Power BI dashboard. Enable drill-down features and slicers for dynamic data exploration.
 
    - ***Insights and Reporting:*** Analyze the visualizations to derive insights and prepare a comprehensive report highlighting key findings and recommendations for strategic planning.
  
## SQL Code and Results

### SQL Code for Creating the Database and View

***1. Creating Database and View Table***
![excel-to-powerbi-image](Assets/images/DatabaseandTable.png)

***Data Testing for No. of Rows***
![excel-to-powerbi-image](Assets/images/no_of_rows.png)

***Data Testing for No. of Columns***
![excel-to-powerbi-image](Assets/images/no_of_columns.png)

***Data Testing for Column Name and Each Data Type***
![excel-to-powerbi-image](Assets/images/dataType.png)

***Data Analysis Questions To ponder when doing analysis***
![excel-to-powerbi-image](Assets/images/analysisQns.png)

***Question 1 Answer***
![excel-to-powerbi-image](Assets/images/regions.png)

![excel-to-powerbi-image](Assets/images/regionsoff.png)

![excel-to-powerbi-image](Assets/images/regionson.png)

***Question 2 Answer***
![excel-to-powerbi-image](Assets/images/items.png)

![excel-to-powerbi-image](Assets/images/itemson.png)

![excel-to-powerbi-image](Assets/images/itemsoff.png)

***Question 3 Answer***
![excel-to-powerbi-image](Assets/images/totalSales.png)

***Question 5 Answer***
![excel-to-powerbi-image](Assets/images/annualsales.png)

***Question 6 Answer***
![excel-to-powerbi-image](Assets/images/itemtypes.png)

![excel-to-powerbi-image](Assets/images/itemtypeoff.png)

![excel-to-powerbi-image](Assets/images/itemtypeon.png)
