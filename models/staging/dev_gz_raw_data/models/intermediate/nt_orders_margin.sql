select *,
round(margin + shipping_fee - logCost - ship_cost,2) as operational_margin
from {{ ref('int_sales_margin') }}

left join {{ ref('stg_dev_gz_raw_data__ship') }}
using (orders_id)