with
    reviews as (select * from {{ ref("fct_reviews_silver") }}),
    listings as (select * from {{ ref("dim_listings_silver") }})

select rev.listing_id, rev.review_date, l.created_at, l.listing_name
from reviews as rev
inner join listings as l on rev.listing_id = l.listing_id
where l.created_at>rev.review_date
