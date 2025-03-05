{{ config(
    materialized='table'
) }}


with

    orders as (

        select
            "Order ID"::integer             as order_id,
            "Customer ID"::integer          as customer_id,
            "Trip ID"::integer              as trip_id,
            "Price (EUR)"::float            as price_eur,
            "Seat No"::varchar              as seat_no,
            "Status"::varchar               as status
        from 
            {{ ref('stg_orders') }}

    )

select * from orders