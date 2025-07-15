select
    *
from {{ source("staging_airbnb", "full_moons") }}