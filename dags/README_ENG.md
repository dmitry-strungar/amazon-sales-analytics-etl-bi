# Airflow DAG Files

This folder contains DAG files for automating ETL processes.

## `update_sales_daily.py`

DAG for daily updating the `sales_daily` data mart.

**What it does:**
- Runs every day at 9:00 AM
- Collects data from the `amazon_sales` table for the last 7 days
- Groups by date and category
- Calculates revenue and unique order count
- Inserts the result into the `sales_daily` data mart

**Technical details:**
- Uses `BashOperator` + `curl` to send HTTP requests to ClickHouse
- Hosts and passwords have been replaced with placeholders
