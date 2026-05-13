select 
    toStartOfMonth(toDate(concat('20', substring(Date, 7, 2), '-', substring(Date, 1, 2), '-', substring(Date, 4, 2)))) as month,
    round(sum(Amount), 2) as revenue,
    count() as orders
from amazon_analytics.amazon_sales
where Status = 'Shipped'
group by month
order by month
