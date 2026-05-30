

# Cyclistic Bike-Share Analysis

A data analytics project looking at how annual members and casual riders use Cyclistic bikes differently, with the goal of helping the marketing team convert more casual riders into members.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Business Problem](#business-problem)
- [Tools Used](#tools-used)
- [Project Workflow](#project-workflow)
- [Data Cleaning & Transformation](#data-cleaning--transformation)
- [SQL Analysis](#sql-analysis)
- [Power BI Dashboard](#power-bi-dashboard)
- [DAX Measures](#dax-measures)
- [Key Insights](#key-insights)
- [Recommendations](#recommendations)
- [Skills Demonstrated](#skills-demonstrated)
- [Repository Structure](#repository-structure)
- [Conclusion](#conclusion)

---

## Project Overview

This project uses Cyclistic's 2021 trip data to understand how **annual members** and **casual riders** behave differently. The findings are presented in an interactive Power BI dashboard, supported by SQL queries and Excel validation.

---

## Business Problem

Cyclistic wants to grow its annual memberships. To do that, the marketing team needs to know:

- How do members and casual riders use the bikes differently?
- What patterns could help convert casual riders into members?
- Where should marketing efforts actually be focused?

---

## Tools Used

| Tool | Purpose |
|---|---|
| **MySQL** | Data analysis & querying |
| **Microsoft Excel** | Data review, cleaning & validation |
| **Power BI** | Dashboard & visualization |
| **Power Query** | Data transformation |
| **DAX** | KPI measures |

---

## Project Workflow

1. Downloaded Cyclistic trip data for 2021
2. Reviewed and cleaned the dataset in Excel
3. Imported data into SQL Server and ran exploratory queries
4. Validated query outputs back in Excel
5. Imported cleaned data into Power BI
6. Created custom columns in Power Query
7. Built DAX measures for KPIs
8. Built the interactive dashboard
9. Pulled out insights and wrote up recommendations

---

## Data Cleaning & Transformation

### EXCEL

- Checked for missing values
- Removed duplicates
- Verified date and time formats
- Made sure data was consistent across fields

### Power Query

Custom columns created for analysis:

| Column | Purpose |
|---|---|
| `Ride Length` | Trip duration |
| `Day of Week` | Weekday vs. weekend patterns |
| `Hour` | Peak riding hours |
| `Hour Label` | Formatting for line charts |
| `Month Name` | Seasonal trends |

---

## SQL Analysis

Queries covered:

- Total rides by rider type
- Average ride duration by rider type
- Rides by day of week and weekday vs. weekend
- Monthly trends
- Peak hours
- Bike type preferences

SQL scripts are in the [`SQL/`](./SQL/) folder.

---

## Power BI Dashboard

**KPI Cards**
- Total Rides
- Total Member Users
- Total Casual Users
- Average Ride Duration

**Charts**
- Member vs. Casual split
- Ride duration by rider type
- Rides by day of week
- Monthly trends
- Weekday vs. weekend comparison
- Hourly trends
- Bike type preferences

There's also a slicer to filter by rider type, month, or day. Screenshots are in the [`Dashboard_Images/`](./Dashboard_Images/) folder.

---

## DAX Measures

```dax
Total Rides = COUNTROWS(bike_data)

Total Member Users = CALCULATE(COUNTROWS(bike_data), bike_data[member_casual] = "member")

Total Casual Users = CALCULATE(COUNTROWS(bike_data), bike_data[member_casual] = "casual")
```

Full list of measures is in the [`PowerBI/`](./PowerBI/) folder.

---

## Key Insights

| # | Insight |
|---|---|
| 1 | Members ride more consistently throughout the week |
| 2 | Casual riders show up mostly on weekends |
| 3 | Casual riders take longer trips but ride far less often |
| 4 | Members look like daily commuters, peaking on weekday rush hours |
| 5 | Summer has the highest ride volume for both groups |
| 6 | Classic bikes are the most used type across both segments |
| 7 | Evening is the busiest time of day for both rider types |

---

## Recommendations

1. **Targeted campaigns** - Show frequent casual riders what they'd save with an annual membership
2. **Weekend promotions** - That's when casual riders are most active, so that's a good time to pitch membership
3. **Summer discounts** - A limited-time offer during peak months could push casual riders to commit
4. **Free trials** - A short trial lowers the barrier for casual users who ride often but haven't signed up
5. **Commuter angle** - Position membership as a cheaper, easier alternative to daily transport costs

---

## Skills Demonstrated

- Data Cleaning
- SQL Query Writing
- Exploratory Data Analysis
- Power Query & Data Transformation
- DAX
- Power BI Dashboard Development
- Data Visualization
- Business Analysis

---

## Repository Structure

```
Cyclistic-Bike-Share-Analysis/
│
├── README.md
├── Dataset/
├── SQL/
├── PowerBI/
├── Dashboard_Images/
└── Insights/
```

---

## Conclusion

This project covers the full analytics process, from cleaning raw data to building a dashboard and writing up recommendations. The main takeaway is that members and casual riders use Cyclistic pretty differently, and that gap is actually an opportunity. With the right targeting and timing, Cyclistic can realistically move more casual riders toward membership.

---

*SQL · Excel · Power BI · DAX*
