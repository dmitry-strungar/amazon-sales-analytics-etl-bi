with ranked_products as (
    select 
        Category,
        SKU,
        round(sum(Amount), 2) as revenue,
        row_number() OVER (PARTITION by Category order by sum(Amount) desc) as rank_in_category
    from amazon_analytics.amazon_sales
    where Status = 'Shipped' and Category != ''
    group by Category, SKU
)
select 
    Category,
    SKU,
    revenue,
    rank_in_category
from ranked_products
where rank_in_category <= 5
order by Category, rank_in_category;
