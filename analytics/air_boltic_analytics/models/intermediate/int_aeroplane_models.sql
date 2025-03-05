{{ config(
    materialized='table'
) }}


with

    aeroplane_models as (

        select 
            "manufacturer"::varchar                       as manufacturer,
            "model"::varchar                              as airplane_model,
            "max_seats"::bigint                           as max_seats,
            "max_weight"::bigint                          as max_weight,
            "max_distance"::bigint                        as max_distance,
            "engine_type"::varchar                        as engine_type,
        from 
            {{ ref('stg_aeroplane_models') }}

    )

select * from aeroplane_models