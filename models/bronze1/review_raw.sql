select
listing_id,
date as review_date,
reviewer_name,
comments as review_text,
sentiment as review_sentiment
from {{source("staging_airbnb","raw_reviews")}}