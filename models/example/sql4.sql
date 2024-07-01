{{ config(materialized='table') }}



with source_data as (

    select drajesh as name
    union all
	select anand as name
	union all
	select pradeepa as name
	union all
    select null as name
)
select *
from source_data
/*
    Uncomment the line below to remove records with null `id` values
*/
-- where id is not null