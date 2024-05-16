with citiesLived3 as(
    select * from {{ref('src_data3_citiesLived')}}
)
select index,place from citiesLived3 group by place,index
order by index