# SQL Queries for ClickHouse

This folder contains 6 analytical SQL queries executed in ClickHouse on Amazon sales data (128,975 records).

The queries demonstrate proficiency in:
- window functions (`ROW_NUMBER`, `SUM OVER`, `PARTITION BY`)
- Common Table Expressions (CTE)
- cohort analysis (via `JOIN` and `GROUP BY`)
- ABC analysis (Pareto 80/20 rule)
- data type conversion
- aggregations and filtering

## Query List

| File | Description |
|------|-------------|
| `1_revenue_by_category.sql` | Total revenue and order count by category |
| `2_dynamic_by_month.sql` | Monthly revenue trend |
| `3_abc_analysis.sql` | ABC analysis: revenue share, cumulative percent, A/B/C categories |
| `4_top5_sku_per_category.sql` | Top 5 SKUs by revenue within each category |
| `5_b2b_b2c_analysis.sql` | B2B vs B2C comparison: revenue, order count, average order value |
