Bike Share Data Analysis Project

Project Overview
This data analysis project explores bike share usage patterns, revenue, and profitability for a bike rental service. The project includes SQL data processing, Power BI visualization, and comprehensive business insights.

Repository Structure
bike-share-analysis/
│
├── data/
│   ├── Bike_data.sql           # Database creation script
│   ├── bike_share_yr_0.csv     # Sample data for year 0
│   └── bike_share_yr_1.csv     # Sample data for year 1
│
├── sql/
│   └── Bike_sales_query.sql    # Main analysis query
│
├── powerbi/
│   └── Bike_Sales_Dashboard.pbix  # Power BI visualization
│
├── screenshots/
│   └── BIKE_STORE_DASHBOARD.png   # Dashboard preview
│
├── README.md                   # Project documentation
└── requirements.txt            # Python dependencies (if applicable)

Key Insights from the Dashboard

Revenue Patterns
Peak Hours: Highest revenue occurs at 8 AM and 5-6 PM on weekdays

Weekday Comparison: Thursdays show highest revenue ($1,222 at 5 PM)

Weekend Patterns: Saturdays generate consistent revenue between 10 AM-4 PM

Business Metrics
Total Riders: 3 million across both years

Profit Margin: 45% indicating healthy operations

Rider Demographics:

Registered users: 81.17%

Casual users: 18.83%

Seasonal Trends
Data shows clear monthly patterns in ridership and revenue

Year-over-year comparison between 2021 and 2022

Technical Implementation
Data Pipeline:

Created SQL Server database with two fact tables (yearly data) and a cost table

Combined datasets using UNION ALL in SQL

Calculated revenue and profit metrics

Analysis Query:

sql
with bike_share as (
 select * from Bike_data.dbo.bike_share_yr_0
 union all
 select * from Bike_data.dbo.bike_share_yr_1
)

select 
    [dteday],
    [season],
    cost.yr,
    [hr],
    [weekday],
    [rider_type],
    [riders],
    [price],
    [COGS],
    riders*price as revenue,
    riders*price-COGS as profit
from bike_share bike
left join Bike_data.dbo.cost_table cost
on bike.yr = cost.yr
Visualization:

Created interactive Power BI dashboard

Included time series, heatmaps, and KPI metrics

Implemented filters for year, hour, and rider type

Business Applications
Operational Planning: Optimize staff scheduling during peak hours

Pricing Strategy: Identify opportunities for dynamic pricing

Marketing Focus: Target casual riders to increase their proportion

Inventory Management: Align bike availability with demand patterns

