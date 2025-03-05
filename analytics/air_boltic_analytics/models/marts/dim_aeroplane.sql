{{ config(
    materialized='table'
) }}


with

    aeroplanes as (

        select 
            c."manufacturer"::varchar                       as manufacturer,
            c."airplane_model"::varchar                     as airplane_model,
            c."max_seats"::bigint                           as max_seats,
            c."max_weight"::bigint                          as max_weight,
            c."max_distance"::bigint                        as max_distance,
            c."engine_type"::varchar                        as engine_type,
            case 
                when o.manufacturer is not null then True
                else False
            end                                             as is_in_operation
        from 
            {{ ref('int_aeroplane_models') }} as c
            left join {{ ref('int_aeroplanes') }} as o
                on c.manufacturer = o.manufacturer
                and c.airplane_model = o.airplane_model

    )

select * from aeroplanes