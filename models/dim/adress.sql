with address as(
    select * from {{ref('src_data')}} 
)
select raw_id,empid,streetaddress, city ,state,postalcode from address