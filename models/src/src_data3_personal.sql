with raw3_data as(
    select * from {{source('airbnb','jsondata3')}}
)

select index,value:fullName::string as fullName,
value:kind::string as kind,
value:age::number as age,
value:gender::string as gender,
value:phoneNumber:areaCode::number as areaCode,
value:phoneNumber:number::number as number
from raw3_data,
lateral flatten(input=>col:root)