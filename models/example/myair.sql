{{ config(materialized='table') }}

select 
    ident as airport_ident,
    type as airport_type,
    name as airport_name,
    continent
from airstats.airport