WITH src_navaids AS (
    SELECT
        *
    FROM
        {{ ref('src_navaids') }}
)
SELECT
    airport_ident,
    COUNT(navaid_id) as num_of_navaids,
FROM
    src_navaids
where 
    airport_ident is not null
GROUP BY
    airport_ident
