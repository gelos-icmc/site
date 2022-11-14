---
title: Comunidades de FLOSS*
description: Comunidades de FLOSS* brasileiras
---

# Comunidades brasileiras de FLOSS

Abaixo estão listadas algumas comunidades brasileiras que tenham como tema FLOSS* no geral, como Software, Hardware, cultura e afins livres.

{% assign communities = site.data.communities | sort: "name" %}

{% for community in communities %}


### {{ community.name }}

{{community.description}}

{% if community.website %}
- Website: [{{ community.website }}]({{ community.website }})
{% endif %}

{% if community.telegram %}
- Telegram: [{{ community.telegram }}]({{ community.telegram }})
{% endif %}

{% if community.matrix %}
- Matrix: [{{ community.matrix }}]({{ community.matrix }})
{% endif %}

{% if community.whatsapp %}
- Whatsapp: [{{ community.whatsapp }}]({{ community.whatsapp }})
{% endif %}

{% if community.irc %}
- IRC: [{{community.irc}}](community.irc)
{% endif %}

{% if community.reddit %}
- Reddit: [{{ community.reddit }}]({{ community.reddit }})
{% endif %}

{% if community.facebook %}
- Facebook: [{{ community.facebook }}](community.facebook)
{% endif %}


{% endfor %}

Faltou alguma? [Adicione aqui!](https://github.com/gelos-icmc/site/blob/main/src/_data/communities.yml)
