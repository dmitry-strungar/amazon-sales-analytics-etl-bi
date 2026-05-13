select 
    Category,
    round(sum(Amount), 2) as total_revenue,
    count() as orders_count
from amazon_analytics.amazon_sales
where Status = 'Shipped'
group by Category
order by total_revenue desc
limit 10
