---
title: Comunidades de FLOSS*
description: Comunidades de FLOSS* brasileiras
data_src: communities
---

# Comunidades brasileiras de FLOSS

Abaixo estão listadas algumas comunidades brasileiras que tenham como tema FLOSS* no geral, como Software, Hardware, cultura e afins livres.

{% assign communities = site.data.communities | sort: "name" %}

{% for community in communities %}


### {{ community.name }}

{{ community.description }}

{% for link in community.links %}
- {{ link[0] }}: [{{ link[1] }}]({{ link[1] }})
{% endfor %}

{% endfor %}

Faltou alguma? [Adicione aqui!](https://github.com/gelos-icmc/site/blob/main/src/_data/communities.yml)
