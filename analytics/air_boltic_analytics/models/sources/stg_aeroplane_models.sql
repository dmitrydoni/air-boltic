{{ config(
    materialized='view'
) }}


with

    aeroplane_models as (

        select * from 
            {{ source(
                'aeroplanes_catalog', 'raw_aeroplane_models'
            ) }}

    )

select * from aeroplane_models
