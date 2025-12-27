select
    order_id,
    user_id,
    status,
    gender,
    created_at,
    returned_at,
    shipped_at,
    delivered_at,
    num_of_item
from {{ source ('thelook', 'orders')}}
--this means look in sources yaml, find the source named thelook, find table named orders
--then compile it to the fully qualified BQ table