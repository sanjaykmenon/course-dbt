{{
  config(
    materialized='table'
  )
}}

SELECT
    address_id,
    zipcode,
    state,
    country
FROM {{ source('tutorial', 'addresses') }}