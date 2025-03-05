{{ config(
    materialized='table'
) }}


with

    customers as (

        select
            "Customer ID"::integer              as customer_id,
            "Name"::varchar                     as customer_name,
            "Customer Group ID"::integer        as customer_group_id,
            "Email"::varchar                    as customer_email,
            "Phone Number"::varchar             as customer_phone_number
        from 
            {{ ref('stg_customers') }}

    )

select * from customers
