select
    id as listing_id,
    name as listing_name,
    listing_url,
    room_type,
    minimum_nights,
    price as price_str,
    created_at,
    updated_at,
    host_id
from {{ source("staging_airbnb", "raw_listings") }}
