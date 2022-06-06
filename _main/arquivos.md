---
title: Arquivos
description: Índice de todos os arquivos de mídia ou documentos do site.
---
# {{ page.title }}
{{ page.description }}

{% assign static_files = site.static_files | sort: "modified_time" | reverse %}
{% for file in static_files %}
{% if file.path contains 'assets/static' %}

- [{{ file.name }}]({{ file.path }}) - {{ file.modified_time | date: "%d/%m/%Y" }}
{% assign description = site.data.static_files_descriptions[file.name] %}
{% if description %}
{{ description }}
{% endif %}

{% endif %}
{% endfor %}
