{{ config(
    materialized='table'
) }}


with

    aeroplanes as (

        select 
            "Airplane ID"::integer                       as airplane_id,
            "Airplane Model"::varchar                    as airplane_model,
            "Manufacturer"::varchar                      as manufacturer
        from 
            {{ ref('stg_aeroplanes') }}

    )

select * from aeroplanes