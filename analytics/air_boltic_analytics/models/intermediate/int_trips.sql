{{ config(
    materialized='table'
) }}


with

    trips as (

        select
            "Trip ID"::integer                  as trip_id,
            "Origin City"::varchar              as origin_city,
            "Destination City"::varchar         as destination_city,
            "Airplane ID"::integer              as airplane_id,
            "Start Timestamp"::timestamp        as start_timestamp,
            "End Timestamp"::timestamp          as end_timestamp,
        from 
            {{ ref('stg_trips') }}

    )

select * from trips