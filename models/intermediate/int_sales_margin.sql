select date_date, orders_id, quantity, purchase_price, revenue,   
    round(quantity * purchase_price,2) as purchase_cost,
    round(revenue - (quantity * purchase_price),2) as margin
from {{ ref('stg_dev_gz_raw_data__sales') }}

left join {{ ref('stg_dev_gz_raw_data__product') }}
using (products_id)