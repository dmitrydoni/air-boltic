{{ config(
    materialized='view'
) }}


with

    customers as (

        select * from 
            {{ source(
                'airboltic', 'raw_customers'
            ) }}

    )

select * from customers
