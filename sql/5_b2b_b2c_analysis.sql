select 
    case when B2B = true then 'B2B' else 'B2C' end as sale_type,
    count() as orders_count,
    round(sum(Amount), 2) as total_revenue,
    round(avg(Amount), 2) as avg_order_value,
    count(distinct `ship-state`) as states_covered
from amazon_analytics.amazon_sales
where Status = 'Shipped'
group by B2B
