with profile as(
    select * from {{ref('src_data')}} 
)
select raw_id,empid,designation,department from profile