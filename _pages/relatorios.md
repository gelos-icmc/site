---
title: Relatórios
description: Atualizações semanais do GELOS
---

# {{ page.title }}
{{ page.description }}

{% for post in site.categories.relatorios %}
{% include listagem-post.html %}
{% endfor %}
