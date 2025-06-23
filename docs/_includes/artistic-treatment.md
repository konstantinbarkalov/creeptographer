{% case page.lang %}
{% when 'en' %}
{% capture artistic_treatment_content %}{% include en/artistic-treatment.md %}{% endcapture %}
{% when 'ru' %}
{% capture artistic_treatment_content %}{% include ru/artistic-treatment.md %}{% endcapture %}
{% when 'th' %}
{% capture artistic_treatment_content %}{% include th/artistic-treatment.md %}{% endcapture %}
{% else %}
{% capture artistic_treatment_content %}{% include en/artistic-treatment.md %}{% endcapture %}
{% endcase %}

<div class="artistic-treatment text-content">
{{ artistic_treatment_content | markdownify }}
</div>
