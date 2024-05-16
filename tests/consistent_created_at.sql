select * from fct_reviews fa join dim_listings_cleansed di 
on fa.listing_id=di.listing_id where fa.review_date <di.created_at