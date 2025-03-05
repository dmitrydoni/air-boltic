{{ config(
    materialized='table'
) }}


with

    customers as (

        select
            c.customer_id                                       as customer_id,
            c.customer_name                                     as customer_name,
            c.customer_email                                    as customer_email,
            c.customer_phone_number                             as customer_phone_number,
            coalesce(cg.customer_group_name, 'No Group')        as customer_group_name
        from 
            {{ ref('int_customers') }} as c
            left join {{ ref('int_customer_groups') }} as cg
                on c.customer_group_id = cg.customer_group_id

    )

select * from customers