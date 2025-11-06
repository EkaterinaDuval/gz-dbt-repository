select *
from {{ ref('nt_orders_margin') }}
left join {{ ref('stg_dev_gz_raw_data__ship') }}
using (orders_id)