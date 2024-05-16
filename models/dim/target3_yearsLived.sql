with yearsLived3 as(
    select * from {{ref('src_data3_citiesLived')}}
)
select index,place,year from yearsLived3 