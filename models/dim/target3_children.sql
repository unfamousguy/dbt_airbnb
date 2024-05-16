with children3 as(
    select * from {{ref('src_data3_children')}}
)
select * from children3