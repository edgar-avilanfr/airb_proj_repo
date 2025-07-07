{{
    config(
        materialized="view"
    )
}}
with listings as (
    select * from {{ref("listings_raw")}}
)

select listing_id,
listing_name,
room_type,
case when minimum_nights = 0 then 1
    else minimum_nights end as minimum_nights,
host_id,
created_at,
updated_at,
SAFE_CAST(price_str as FLOAT64) as price
from listings