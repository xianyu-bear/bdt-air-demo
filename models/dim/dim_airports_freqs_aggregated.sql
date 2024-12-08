WITH src_airports_freqs AS (
    SELECT
        *
    FROM
        {{ ref('src_airports_freqs') }}
)
SELECT
    airport_ident, 
    COUNT(airport_freq_id) as num_of_freqs,
FROM
    src_airports_freqs
where 
    airport_ident is not null
GROUP BY
    airport_ident