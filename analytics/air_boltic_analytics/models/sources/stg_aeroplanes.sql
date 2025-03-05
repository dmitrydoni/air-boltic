{{ config(
    materialized='view'
) }}


with

    aeroplanes as (

        select * from 
            {{ source(
                'airboltic', 'raw_aeroplanes'
            ) }}

    )

select * from aeroplanes
