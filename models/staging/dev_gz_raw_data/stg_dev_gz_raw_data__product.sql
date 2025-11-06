with

    source as (select * from {{ source("dev_gz_raw_data", "product") }}),

    renamed as (
        select
          products_id, 
          CAST(purchse_price as FLOAT64) as purchase_price,
          CAST(purchase_cost as INT64) as purchase_cost
        from source

    )

    select * from renamed

