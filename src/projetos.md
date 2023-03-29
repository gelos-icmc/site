---
title: Projetos
description: Índice de projetos e atividades recorrentes.
---

# {{ page.title }}
{{ page.description }}

{% for post in site.projects %}
{% include listagem-projeto.html %}
{% endfor %}
