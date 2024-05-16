with personal3 as(
    select * from {{ref('src_data3_personal')}}
)
select * from personal3