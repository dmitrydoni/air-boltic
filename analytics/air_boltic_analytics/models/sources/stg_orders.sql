{{ config(
    materialized='view'
) }}


with

    orders as (

        select * from 
            {{ source(
                'airboltic', 'raw_orders'
            ) }}

    )

select * from orders
