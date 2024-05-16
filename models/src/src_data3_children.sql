with raw3_data as(
    select * from {{source('airbnb','jsondata3')}}
)

select f.index,c.value:name::string as child_name,
c.value:gender::string as child_gender,
c.value:age::number as child_age 
from raw3_data, lateral flatten(input=>col:root) f,
lateral flatten(value:children,outer=>True) c