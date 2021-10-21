---
title: Notícias
description: Últimas notícias do GELOS
---

# Notícias

{% for post in site.categories.noticias %}
{% include listagem-post.html %}
{% endfor %}
