with raw3_data as(
    select * from {{source('airbnb','jsondata3')}}
)

select f.index as index,ci.value:place::string as place,y.value::number as year
from raw3_data,
lateral flatten(input=>col:root) f, 
lateral flatten(input=>f.value:citiesLived) ci,
lateral flatten(input=>ci.value:yearsLived) y