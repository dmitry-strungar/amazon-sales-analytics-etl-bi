with sku_revenue as (
    select 
        SKU,
        sum(Amount) as revenue
    from amazon_analytics.amazon_sales
    where Status = 'Shipped'
    group by SKU
)
select 
    SKU,
    revenue,
    round(revenue / sum(revenue) OVER () * 100, 2) as revenue_percent,
    round(sum(revenue) OVER (order by revenue desc) / sum(revenue) OVER () * 100, 2) as cum_percent,
    case
        when cum_percent <= 80 then 'A (80% revenue)'
        when cum_percent <= 95 then 'B (80-95% revenue)'
        else 'C (95-100% revenue)'
    end as abc_category
from sku_revenue
order by revenue desc
