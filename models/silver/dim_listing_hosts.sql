with
    dim_listings as (select * from {{ ref("dim_listings_silver") }}),
    dim_hosts as (select * from {{ ref("dim_hosts_silver") }})

select l.*, h.host_name, h.is_superhost as host_is_superhost, h.host_created_at
from dim_listings as l
inner join dim_hosts as h on l.host_id = h.host_id
