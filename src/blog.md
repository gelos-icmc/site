---
title: Blog
description: Novidades e links interessantes compartilhados pelo grupo
---

# {{ page.title }}
{{ page.description }}

{% for post in site.posts %}
{% include listagem.html %}
{% endfor %}
