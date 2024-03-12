---
title: Installfest 2024/1
author: Gabriel e Charles
lang: pt-BR
state: current
---

Evento de instalação de Linux, realizado no dia 14/03 das 14h às 19h, no vão da
biblioteca do ICMC.

[**Post de divulgação**](/2024/03/01/installfest-2024-1.html)

## Como participar

Quer participar como voluntário? Maravilha! Basta seguir esse roteiro:

- Baixe [as ISOs](#Distros) que você pretende usar
    - Para usar várias ISOs em um único pendrive, use o [ventoy](https://ventoy.net).
    - Caso queira, você pode aplicar o [nosso tema](https://github.com/gelos-icmc/tema-ventoy).
- Adicione seu nome (e pendrives) [na lista](https://github.com/gelos-icmc/site/blob/main/src/_data/if5-volunteers.yml).
    - Isso atualizará as planilhas abaixo automaticamente.
    - Caso você tenha dificuldade com git, basta pedir no [telegram](https://t.me/gelos_geral) que alguém faça por você.

### Voluntários

| **Nome**                  | **Email**                | **Horários**               |
|---------------------------|--------------------------|----------------------------|
{%- for volunteer in site.data.if5-volunteers %}
| {{ volunteer["nome"] }}   | {{ volunteer["email"] }} | {{ volunteer["horarios"]}} |
{%- endfor %}
|---------------------------|--------------------------|----------------------------|


### Pendrives

| **Tamanho**               | **Descrição**               | **Dono**               | **ISOs**               |
|---------------------------|-----------------------------|------------------------|------------------------|
{%- for volunteer in site.data.if5-volunteers -%}
{%- for pendrive in volunteer.pendrives %}
| {{ pendrive["tamanho"] }} | {{ pendrive["descricao"] }} | {{ volunteer["nome"]}} | {{ pendrive["isos"]}} |
{%- endfor -%}
{%- endfor %}
|---------------------------|-----------------------------|------------------------|------------------------|


## Distros

Todas são `x86-64` e, para agilizar a instalação, versão "offline" (não
netinstall).

| **ISO**                                | **Tamanho**       | **Checksum** (SHA256) |
|----------------------------------------|-------------------|-----------------------|
{%- for iso in site.data.if5-isos %}
| [{{ iso["name"] }}]({{ iso["link"] }}) | {{ iso["size"] }} | `{{ iso["sha256" ]}}` |
{%- endfor %}
|----------------------------------------|-------------------|-----------------------|

Lembre-se de usar o checksum. Além de eles estarem na tabela acima, você pode
baixar [este arquivo](/assets/if5-checksums.sha256) para checar as ISOs de
forma super conveniente.

Entre no diretório com suas ISOs e rode:

```bash
sha256sum -c <(curl https://gelos.club/assets/if5-checksums.sha256)
```

O comando te avisará, para cada ISO, se o hash bate ou não.

## Organização

### Pré evento

- [x] Reservar espaço
- [x] Post de divulgação
- [x] Flyer
    - [x] Preparar
    - [ ] Imprimir
    - [ ] Colar
- [x] Divulgar nas listas
- [x] ISOs
    - [x] Preencher tabela com links atuais
    - [x] Criar arquivo com checksums
- [x] Levantar pessoas
    - [x] Preencher tabela de voluntários
    - [x] Preencher tabela de pendrives
- [ ] Coffee break
    - [ ] Salgados
    - [ ] Bolos
    - [ ] Refrigerantes
    - [ ] Café

### Pós evento

- [ ] Levantar números (instalações, pessoas presentes, etc)

## Flyer

![Flyer](https://cloud.gelos.club/s/EHmYwea5kQT6Y7X/preview)
