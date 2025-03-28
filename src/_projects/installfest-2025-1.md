---
title: Installfest 2025/1
authors:
    - Luana
    - Gabriel
lang: pt-BR
state: in_progress
---

Evento de instalação de Linux, será realizado no dia 10/04 das 14h às 19h, no vão da
biblioteca do ICMC.

[**Post de divulgação**](/2025/03/2025/03/25/installfest-2025-1.html)

## Como participar

Quer participar como voluntário? Maravilha! Basta seguir esse roteiro:

- Baixe [as ISOs](#distros) que você pretende usar
    - Para usar várias ISOs em um único pendrive, use o [ventoy](https://ventoy.net).
    - Caso queira, você pode aplicar o [nosso tema](https://github.com/gelos-icmc/tema-ventoy).
- Adicione seu nome (e pendrives) [na lista](https://github.com/gelos-icmc/site/blob/main/src/_data/if6/if6-volunteers.yml).
    - Isso atualizará as planilhas abaixo automaticamente.
    - Caso você tenha dificuldade com git, basta pedir no [telegram](https://t.me/gelos_geral) que alguém faça por você.
- Lembre de pedir que a pessoa preencha o [formulário de instalação](TODO_REPLACE_ME). Utilizamos isso para nos isentar de possíveis problemas, coletar contatos, e também ter um censo de quantas instalações foram feitas.

### Voluntários

{% include planilha-voluntarios.html data=site.data.if6.if6-volunteers %}

### Pendrives

{% include planilha-pendrives.html data=site.data.if6.if6-volunteers %}


## Distros

A distro principal a ser recomendada e instalada é o Fedora.
Disponibilizaremos, no mínimo, a versão com GNOME, KDE, e Xfce. Para usuários
não-técnicos, a sugestão pode ser Fedora ou Linux Mint. Para usuários
avançados, fica a critério do voluntário qual sugerir. É importante lembrar
que iniciantes são prioridade no evento.

Lembre-se de instalar os drivers necessários, além de configurar um sistema 
de snapshots (Snapper, TimeShift, etc) caso não venha por padrão. Recursos para 
essas instalações no Fedora estão disponíveis na 
[página de problemas do GELOS](https://gelos.club/pobremas).

Estamos disponibilizando todas ISOs para x86_64, bem como as
principais para aarch64 (UEFI Arm). Voluntários podem levar ISOs extras,
caso queiram.

{% include planilha-isos.html data=site.data.if6.if6-isos %}

Lembre-se de ejetar o pendrive de forma 
segura (rode o comando `sync` ou ejete pela sua DE) e de conferir os checksums! 
Além de eles estarem na tabela acima, você pode
baixar [este arquivo](/assets/installfest/if6-checksums.sha256) para checar as ISOs de
forma super conveniente.

Entre no diretório com suas ISOs e rode:

```bash
sha256sum -c <(curl https://gelos.club/assets/installfest/if6-checksums.sha256)
```

O comando te avisará, para cada ISO, se o hash bate ou não. Pode
ser interessante rodar o comando no diretório da pendrive, após a escrita (ejeção/`sync`) ter terminado, para garantir que não tenha acontecido corrupção no processo.

## Organização

### Pré evento

- [x] Reservar espaço
- [x] Post de divulgação
    - [x] Conferir data pra postar (jekyll n posta post com data futura)
- [ ] Flyer
    - [x] Preparar
    - [ ] Imprimir
    - [ ] Colar
- [x] Fazer permalink /if6 para pag no blog
- [x] Arrumar permalink /if6 para pag no blog
- [ ] Divulgar nas listas
    - IFSC
      - [x] Solicitar
      - [ ] Done
    - ICMC
      - [x] Solicitar
      - [ ] Done
    - IQSC
      - [x] Solicitar
      - [ ] Done
    - EESC
      - [x] Solicitar
      - [ ] Done
    - IAU
      - [x] Solicitar
      - [ ] Done
- [ ] Divulgar nos grupos
    - [x] IFSC
    - [x] ICMC
    - [ ] EESC
    - [ ] IAU
    - [ ] IQSC
- [x] ISOs
    - [x] Terminar de atualizar tabela com links e checksums atuais
    - [x] Mirror das isos do openSUSE
    - [x] Criar arquivo com checksums
- [ ] Levantar pessoas
    - [ ] Preencher tabela de voluntários
    - [ ] Preencher tabela de pendrives
- [ ] Formulário de instalação (cryptpad? forms? papel?)
- [ ] Coffee break
    - [ ] Salgados
    - [ ] Bolos
    - [ ] Refrigerantes
    - [ ] Café

### Pós evento

- [ ] Levantar números (instalações, pessoas presentes, etc)

## Data e Local

- 📅 Data: 10/04/2025
- 🕒 Horário: 14h-19h
- 📍 Local: Vão da Biblioteca (ICMC-USP)

Mapa:

<iframe height="350" src="https://www.openstreetmap.org/export/embed.html?bbox=-47.89704591035843%2C-22.00876558246043%2C-47.89270609617233%2C-22.006569767724148&amp;layer=mapnik&amp;marker=-22.007668922727124%2C-47.89487600326538" style="border: 1px solid black; width: 100%"></iframe><br/><small><a href="https://www.openstreetmap.org/?mlat=-22.007669&amp;mlon=-47.894876#map=19/-22.007668/-47.894876&amp;layers=N">Ver mapa ampliado</a></small>

## Flyer

![Flyer](/assets/static/if6/GELOS-Installfest-2025-1a.png)
