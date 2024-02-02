{% macro date_trunc(date_column, partition_by, date_part='month') %}
    DATE_TRUNC('{{ date_part }}', DATE( {{ date_column }} ) )
{% endmacro %}
