{{
    config(
        materialized = 'table'
    )
}}

with stg_users as (
    SELECT * FROM {{ ref('stg_users') }}
)

SELECT
    user_id AS user_guid,
    address_id AS address_guid,
    first_name,
    last_name,
    email,
    phone_number,
    created_at AS created_at_utc,
    updated_at AS updated_at_utc
FROM stg_users
