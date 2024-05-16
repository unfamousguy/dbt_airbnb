with children as(
    select * from {{ref('src_data2')}}
)
select name,child_age,child_gender from children