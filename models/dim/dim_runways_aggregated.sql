WITH src_runways AS (
    SELECT
        *
    FROM
        {{ ref('src_runways') }}
)
SELECT
    airport_ident,
    COUNT(runway_id) as num_of_runways,
FROM
    src_runways
WHERE 
    runway_closed = 0
and 
    airport_ident is not null
GROUP BY
    airport_ident