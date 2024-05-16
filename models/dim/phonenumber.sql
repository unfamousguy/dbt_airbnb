with phonenumber as(
    select * from {{ref('src_data2')}}
)
select areacode,number from phonenumber