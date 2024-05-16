WITH raw2_data AS (
 SELECT
 *
 FROM
 {{ source('airbnb', 'jsondata2') }}
)


select value:citieslived[0]:place::string as place1,
value:citieslived[0]:yearslived[0]::number as yearslived,
value:citieslived[1]:place::string as place2,
value:citieslived[1]:yearslived[0]::number as years_lived from raw2_data, 
lateral flatten(input=>content:root)
