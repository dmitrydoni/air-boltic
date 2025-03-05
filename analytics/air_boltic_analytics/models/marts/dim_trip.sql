{{ config(
    materialized='table'
) }}


with

    trips as (

        select
            trip_id,
            origin_city,
            destination_city,
            airplane_id,
            start_timestamp,
            end_timestamp
        from 
            {{ ref('int_trips') }}

    )

select * from trips