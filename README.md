# 🚴 Bike Share Analytics: Revenue & Usage Dashboard


## 📌 Project Overview
A comprehensive analysis of bike share program performance, tracking 3 million rides across 2021-2022. This project transforms raw usage data into actionable business insights through:

- **SQL data modeling** (2 years of hourly ride data)
- **Revenue & profit calculations**
- **Interactive Power BI dashboard**
- **Peak demand period analysis**

## 📊 Dashboard Preview

![BikeStore Dashboard](BIKE&STORE&DASHBORAD.png)

## 🔍 Key Insights

### 🕒 Peak Revenue Hours
| Time | Weekday Avg | Weekend Avg |
|------|------------|------------|
| 8 AM | $1,100     | $230       | 
| 5 PM | $1,200     | $750       |

### 📊 Rider Demographics
``mermaid
pie
    title Rider Types
    "Registered" : 81.17
    "Casual" : 18.83

💰 Financial Performance
Total Revenue: $12.4M

Profit Margin: 45%

Best Month: June (+22% vs avg)

🛠️ Technical Implementation

1. Data Pipeline

graph LR
    A[CSV Files] --> B[SQL Server]
    B --> C[Data Cleaning]
    C --> D[Power BI Model]
    D --> E[Visualizations]

2. Core SQL Analysis

-- Combines 2 years of data with cost analysis
WITH rides AS (
    SELECT * FROM bike_share_yr_0
    UNION ALL
    SELECT * FROM bike_share_yr_1
)
SELECT
    r.weekday,
    r.hr,
    r.riders * c.price AS revenue,
    (r.riders * c.price) - c.COGS AS profit
FROM rides r
JOIN cost_table c ON r.yr = c.yr

3. Dashboard Features
Time Intelligence: Hourly/weekday trends

Seasonal Filters: Compare quarters

Rider Segmentation: Casual vs registered

Profit Heatmap: Visualize high-margin periods

