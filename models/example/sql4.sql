{{ config(materialized='table') }}



with source_data as (

    select 1 as id, rajesh as name
    union all
	select 2 as id, anand as name
	union all
	select 3 as id, pradeepa as name
	union all
    select null as id, null as name
)
select *
from source_data
/*
    Uncomment the line below to remove records with null `id` values
*/
-- where id is not null