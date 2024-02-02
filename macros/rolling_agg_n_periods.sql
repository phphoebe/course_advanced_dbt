{% macro rolling_agg_n_periods(agg='AVG', column_name='event_id', partition_by='user_id', order_by='created_at', n=7) %}
    {{ agg }}( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN {{ n }} PRECEDING AND CURRENT ROW
            ) AS {{ agg |lower }}_{{ n }}_periods_{{ column_name }}
{% endmacro %}
