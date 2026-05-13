select 
    toStartOfMonth(proper_date) as month,
    round(sum(Amount), 2) as revenue,
    count() as orders
from amazon_analytics.amazon_sales
where Status = 'Shipped'
group by month
order by month
