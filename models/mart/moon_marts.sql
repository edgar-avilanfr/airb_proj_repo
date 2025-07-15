with fct_reviews as (
    select * from {{ref("fct_reviews_silver")}}
),
moon_days as (
    select * from {{ref("dim_moons")}}
)

select fct.*,
case when m.full_moon_date is null then 'not null moon'
else 'full moon' end as is_full_moon
from fct_reviews as fct
left join moon_days as m on
DATE(fct.review_date)= DATE_ADD(m.full_moon_date, interval 1 day)

--DATE_ADD(DATE(full_moon_date), interval 1 day)