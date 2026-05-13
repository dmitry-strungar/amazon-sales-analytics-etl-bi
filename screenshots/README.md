# Скриншоты проекта

Все скриншоты сделаны в локальной среде разработки (Windows 10 + Docker Desktop + VS Code).  
Публичные ссылки отсутствуют, так как развёртывание происходило на моём локальном компьютере.

## Содержание

| Файл | Что показывает |
|------|----------------|
| `dashboard1_superset.png` | Управленческая сводка в Superset (KPI, динамика выручки, топ-10 категорий, B2B/B2C) |
| `dashboard2_superset.png` | Анализ товаров в Superset (количество заказов по месяцам, выручка B2B/B2C, топ-5 SKU) |
| `dashboard_metabase.png` | География и тренды в Metabase (выручка по штатам, топ-5 штатов, средний чек по месяцам) |
| `containers_active.png` | Результат команды `docker ps` - все контейнеры работают |
| `dag_active.png` | DAG `update_sales_daily` в Airflow (статус "успех", зелёные кружки) |
| `clickhouse_data.png` | Данные в ClickHouse (результат `SELECT * FROM amazon_analytics.amazon_sales LIMIT 10`) |

## Почему нет ссылок на дашборды

Все сервисы (ClickHouse, Airflow, Superset, Metabase) были развёрнуты локально через Docker.  
Публичный доступ к ним не настраивался. Скриншоты подтверждают работоспособность системы.
