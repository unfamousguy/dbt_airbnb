WITH raw_data AS (
 SELECT
 *
 FROM
 {{ source('airbnb', 'jsondata') }}
)

select
  raw_id,
  raw.data_content:empid as empid,
  raw.data_content:personal:name as name,
  raw.data_content:personal:gender as gender,
  raw.data_content:personal:age as age,
  raw.data_content:personal:address:streetaddress as streetaddress,
  raw.data_content:personal:address:city as city,
  raw.data_content:personal:address:state as state,
  raw.data_content:personal:address:postalcode as postalcode,
  raw.data_content:profile:designation as designation,
  raw.data_content:profile:department as department
from  raw_data as raw

