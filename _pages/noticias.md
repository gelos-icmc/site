---
title: Notícias
description: Novidades e links interessantes compartilhados pelo grupo
---

# {{ page.title }}
{{ page.description }}

{% for post in site.categories.noticias %}
{% include listagem-post.html %}
{% endfor %}
