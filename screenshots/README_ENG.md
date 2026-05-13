# Project Screenshots

All screenshots were taken in a local development environment (Windows 10 + Docker Desktop).  
Public links are not available because the deployment was done on my local machine.

## Contents

| File | Description |
|------|-------------|
| `dashboard1_superset.png` | Executive dashboard in Superset (KPIs, revenue trend, top-10 categories, B2B/B2C) |
| `dashboard2_superset.png` | Product analysis dashboard in Superset (monthly orders, B2B/B2C revenue, top-5 SKUs) |
| `dashboard_metabase.png` | Geography and trends in Metabase (revenue by state, top-5 states, average order value trend) |
| `containers_active.png` | Output of `docker ps` – all containers are running |
| `dag_active.png` | DAG `update_sales_daily` in Airflow (success status, green circles) |
| `clickhouse_data.png` | Data in ClickHouse (result of `SELECT * FROM amazon_analytics.amazon_sales LIMIT 10`) |

## Why no live dashboard links

All services (ClickHouse, Airflow, Superset, Metabase) were deployed locally using Docker.  
Public access was not configured. Screenshots confirm the system is working.
