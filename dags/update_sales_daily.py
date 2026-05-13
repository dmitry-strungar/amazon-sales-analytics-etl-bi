from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime, timedelta

default_args = {
    'owner': 'your_name',
    'depends_on_past': False,
    'start_date': datetime(2026, 5, 13),
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

dag = DAG(
    'update_sales_daily',
    default_args=default_args,
    description='Updates sales_daily mart for the last 7 days',
    schedule_interval='0 9 * * *',
    catchup=False,
)

update_task = BashOperator(
    task_id='update_sales_daily',
    bash_command="""
    curl -s -X POST 'http://CLICKHOUSE_HOST:8123' \
      --data-binary "INSERT INTO amazon_analytics.sales_daily (Date, Category, TotalAmount, OrderCount)
    SELECT proper_date, Category, sum(Amount), count(DISTINCT \\`Order ID\\`)
    FROM amazon_analytics.amazon_sales
    WHERE proper_date >= today() - 7
    GROUP BY proper_date, Category"
    """,
    dag=dag,
)
