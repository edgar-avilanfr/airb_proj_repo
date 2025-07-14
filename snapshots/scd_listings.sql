{%snapshot scd_listings%}

{{
    config(
        target_schema='airb_staging_silver',
        unique_key= 'id',
        strategy= 'timestamp',
        updated_at= 'updated_at',
        invalidate_hard_deletes= True
    )
}}

select * from {{source("staging_airbnb", "raw_listings")}}

{% endsnapshot %}