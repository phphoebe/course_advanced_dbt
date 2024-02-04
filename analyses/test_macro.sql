SELECT
    user_id,
    {{ rolling_agg_n_periods ('AVG', 'event_id', 'user_id') }}

FROM {{ ref('fct_events') }}
