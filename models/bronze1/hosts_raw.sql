select id as host_id,
name as host_name,
is_superhost,
created_at as host_created_at,
updated_at as host_updated_at
from {{source("staging_airbnb","raw_hosts")}}