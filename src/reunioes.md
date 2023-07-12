---
title: Reuniões
description: Atas de reuniões do grupo.
collection_src: meetings
---

# {{ page.title }}
{{ page.description }}

{% assign meetings = site.meetings | sort: 'date' | reverse %}
{% for post in meetings %}
{% include listagem.html %}
{% endfor %}
