{{ config(
    materialized='view'
) }}


with

    trips as (

        select * from 
            {{ source(
                'airboltic', 'raw_trips'
            ) }}

    )

select * from trips
