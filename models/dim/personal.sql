with personal as(
    select * from {{ref('src_data')}} 
)
select raw_id,empid,name,gender,age from personal