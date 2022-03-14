{{
  config(
    materialized='table'
  )
}}

SELECT 
    promo_id,
    discount,
    status AS promos_status
FROM {{ source('tutorial', 'promos') }}