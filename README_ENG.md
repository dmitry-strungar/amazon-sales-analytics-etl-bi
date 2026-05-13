# Amazon Sales Analytics: ETL, Data Marts, and Dashboards

## Project Overview

This project represents a comprehensive data analysis of Amazon sales (128,975 records). A complete cycle was implemented: from loading data into ClickHouse to automating ETL through Apache Airflow and creating dashboards in Apache Superset and Metabase. All code and configurations are stored in Git with full version history.

## Business Context

An online retailer needs an automated process for updating key metrics and intuitive tools for monitoring them.

**Main objectives:**
- Track revenue and order count dynamics
- Analyze sales performance by category and state
- Compare B2B and B2C segments
- Automate daily data updates

## Project Goals

- Load and prepare data in ClickHouse (128,975 rows)
- Set up daily automated updates of aggregated metrics via Apache Airflow
- Build interactive dashboards in Apache Superset (executive and product-focused)
- Build a dashboard in Metabase (geography and trends)
- Containerize the entire environment using Docker
- Maintain version control with Git

## Analytical Approach

- Data type conversion (dates, text fields)
- Aggregation and grouping by category, date, and state
- Calculation of key metrics: revenue, order count, average order value
- B2B / B2C segmentation
- ETL automation using Airflow (BashOperator + HTTP requests to ClickHouse)

## Key Insights

- **Revenue is heavily dependent on a few states (Maharashtra, Karnataka, Tamil Nadu).** 60% of total revenue comes from the top 3 states, indicating geographic concentration.
- **Average order value is stable over time, but there are peaks before holidays.** This helps in planning marketing campaigns.
- **The B2B segment is small but has a high average order value.** There is potential for developing corporate sales.
- **Shirt and Trousers categories are the main revenue drivers.** Assortment and advertising efforts should focus on them.
- **Airflow reduces report preparation time from 30 minutes to zero.** The data mart is updated automatically.

## Business Value

- **Transparency:** unified metrics across all dashboards
- **Speed:** daily automatic updates without analyst intervention
- **Flexibility:** ability to add new data marts and data sources
- **Interactivity:** filters by date, category, and sales type

## Stakeholders

- Management (overall dynamics)
- Marketing (category and state performance)
- Finance department (revenue and average order value trends)
- BI team (automation and maintenance)

## Technology Stack

- ClickHouse
- Apache Airflow (BashOperator + curl)
- Apache Superset
- Metabase
- Docker, Docker Compose
- Git (version control)
- SQL, Python (DAG)

## Skills Demonstrated

- Loading and preparing data in ClickHouse
- Data type conversion and data cleaning
- Writing complex SQL queries (window functions, aggregations)
- Developing DAGs in Airflow (scheduling, BashOperator, logging)
- Creating interactive dashboards in Superset and Metabase
- Containerizing an analytics stack using Docker
- Managing a project with Git (commits, branching, repository workflow)
