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

- Baixe [as ISOs](#distros) que você pretende usar
    - Para usar várias ISOs em um único pendrive, use o [ventoy](https://ventoy.net).
    - Caso queira, você pode aplicar o [nosso tema](https://github.com/gelos-icmc/tema-ventoy).
- Adicione seu nome (e pendrives) [na lista](https://github.com/gelos-icmc/site/blob/main/src/_data/if5-volunteers.yml).
    - Isso atualizará as planilhas abaixo automaticamente.
    - Caso você tenha dificuldade com git, basta pedir no [telegram](https://t.me/gelos_geral) que alguém faça por você.
- Lembre de pedir que a pessoa preencha o [formulário de instalação](https://forms.gle/z5YY2rA62zqAAwNf7). Utilizamos isso para nos isentar de possíveis problemas, coletar contatos, e também ter um censo de quantas instalações foram feitas.

### Voluntários

{% include planilha-voluntarios.html data=site.data.if5-volunteers %}

### Pendrives

{% include planilha-pendrives.html data=site.data.if5-volunteers %}


## Distros

A distro principal a ser recomendada e instalada é o Fedora.
Disponibilizaremos, no mínimo, a versão com GNOME, KDE, e Xfce. Para usuários
não-técnicos, a sugestão pode ser Fedora ou Linux Mint. Para usuários
avançados, fica a critério do voluntário qual sugerir. É importante lembrar
que iniciantes são prioridade no evento.

Estamos disponibilizando oficialmente apenas ISOs para x86_64. Mas alguns
voluntários pretendem levar também ISOs ARM64.

{% include planilha-isos.html data=site.data.if5-isos %}

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
