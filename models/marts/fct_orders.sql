with orders as (
    select
        order_id,
        user_id,
        status as order_status,
        gender,
        created_at,
        shipped_at,
        delivered_at,
        returned_at,
        num_of_item 
    from {{ ref('stg_thelook_orders') }}
),

order_items_agg as (
    select
        order_id,
        count(*) as row_count,
        count(distinct product_id) as distinct_products,
        sum(sale_price) as gross_sales
    from {{ ref('stg_thelook_orderitems') }}
    group by 1 --order_id
)

select 
    o.*,
    i.row_count,
    i.distinct_products,
    i.gross_sales
from orders o
left join order_items_agg i
on o.order_id = i.order_id