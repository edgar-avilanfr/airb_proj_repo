{{
    config(
        materialized="view"
    )
}}
with hosts as (select * from {{ ref("hosts_raw") }})

select
    host_id,
    coalesce(host_name, 'Anonymous') as host_name,
    is_superhost,
    host_created_at,
    host_updated_at
from hosts
