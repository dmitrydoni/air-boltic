{{ config(
    materialized='view'
) }}


with

    customer_groups as (

        select * from 
            {{ source(
                'airboltic', 'raw_customer_groups'
            ) }}

    )

select * from customer_groups
