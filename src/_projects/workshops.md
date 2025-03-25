---
title: Workshops e Minicursos
author: Vinicius
lang: pt-BR
state: permanent
---

O GELOS realiza alguns minicursos e workshops ao longo do ano, tendo como objetivo ministrar aulas sobre assuntos relacionados.

Exemplos de minicursos realizados ou planejados incluem Git, Nix, Shell Scripting, Self Hosting e muito mais.

Após a realização de um workshop, sempre que fizer sentido manteremos uma página na [Wiki do GELOS](/wiki) sobre o assunto, incluindo o que foi usado na aula, informações extras e a mantendo atualizada com novas informações que surjam no futuro.

### Lista de Workshops e Minicursos

{% for item in site.data.workshops %}{% include listagem-eventos.html element="h3" %}{% endfor %}