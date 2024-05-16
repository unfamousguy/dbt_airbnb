WITH raw2_data AS (
 SELECT
 *
 FROM
 {{ source('airbnb', 'jsondata2') }}
)

select value:emp_id::string as emp_id,
value:kind::string as kind,
value:fullname::string as fullname,
value:age::number as age,
value:gender::string as gender,
value:phonenumber:areacode::number as areacode,
value:phonenumber:number::number as number,
value:children[0]:name::string as name,
value:children[0]:gender::string as child_gender,
value:children[0]:age::number as child_age
from raw2_data,
lateral flatten(input=>content:root) 