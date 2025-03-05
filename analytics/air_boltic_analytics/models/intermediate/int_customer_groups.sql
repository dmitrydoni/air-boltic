{{ config(
    materialized='table'
) }}


with

    customer_groups as (

        select
            "ID"::integer                       as customer_group_id,
            "Type"::varchar                     as customer_group_type,
            "Name"::varchar                     as customer_group_name,
            "Registry number"::varchar          as registry_number
        from 
            {{ ref('stg_customer_groups') }}

    )

select * from customer_groups
