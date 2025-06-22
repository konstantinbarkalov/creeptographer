{% capture production_package_content %}
# {{ site.data[page.lang].header.title }} (v{{ site.version }})
{{ site.data[page.lang].header.tagline }}

> {{ site.data[page.lang].header.quote }}
{% endcapture %}

<div class="header text-content">
{{ production_package_content | markdownify }}
</div>