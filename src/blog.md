---
title: Blog
description: Novidades e links interessantes compartilhados pelo grupo
collection_src: posts
---

# {{ page.title }}
{{ page.description }}

{% for post in site.posts %}
{% include listagem.html %}
{% endfor %}
