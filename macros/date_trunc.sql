{%- macro date_trunc(date_column, date_part='month') -%}

    DATE_TRUNC('{{ date_part }}', DATE({{ date_column }})) as date_{{ date_part }}

{%- endmacro -%}
