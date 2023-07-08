---
title: Reuniões
description: Atas de reuniões do grupo.
---

# {{ page.title }}
{{ page.description }}

{% assign meetings = site.meetings | sort: 'date' | reverse %}
{% for post in meetings %}
{% include listagem-post.html %}
{% endfor %}
