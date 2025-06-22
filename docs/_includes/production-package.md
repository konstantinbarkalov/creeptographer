{% case page.lang %}
  {% when 'en' %}
    {% include en/production-package.md %}
  {% when 'ru' %}
    {% include ru/production-package.md %}
  {% when 'th' %}
    {% include th/production-package.md %}
  {% else %}
    {% include en/production-package.md %}
{% endcase %}