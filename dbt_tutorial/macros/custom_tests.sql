{% macro test_not_future_date(model, field_name) %}

-- The test SQL that will be run
SELECT
    *
FROM
    {{ model }}
WHERE
    {{ field_name }}::date > CURRENT_DATE

{% endmacro %}
