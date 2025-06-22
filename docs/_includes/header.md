{% capture production_package_content %}
# {{ site.data[page.lang].header.title }}
### {{ site.data[page.lang].header.tagline }}
{% endcapture %}

<div class="header text-content">
{{ production_package_content | markdownify }}
</div>