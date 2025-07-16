{% macro format_date(column_name) %}
    to_varchar({{ column_name }}, 'YYYY-MM-DD')
{% endmacro %}