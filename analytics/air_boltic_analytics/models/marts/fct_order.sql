{{ config(
    materialized='table'
) }}


with

    orders as (

        select
            order_id,
            customer_id,
            trip_id,
            price_eur,
            seat_no,
            status
        from 
            {{ ref('int_orders') }}

    )

select * from orders