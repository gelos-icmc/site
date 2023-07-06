---
title: Projetos
description: Índice de projetos e atividades recorrentes. Alguns são Work-in-progress!
---

# {{ page.title }}
{{ page.description }}

{% for post in site.projects %}
{% include listagem-projeto.html %}
{% endfor %}
