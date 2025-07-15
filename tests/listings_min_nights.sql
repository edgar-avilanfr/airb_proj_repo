select *
from {{ref('dim_listings_silver')}}
where minimum_nights <1