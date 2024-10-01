---
title: Plantões de Dúvidas
lang: pt-BR
state: permanent
author : Luana
---

Plantões para tirar dúvidas com Linux e outras ferramentas livres.

Usa Linux e esbarrou em algum problema? Usa algum software open source e tem alguma dúvida? Estamos aqui para ajudar!

Nos plantões, haverá ao menos ume voluntárie na sala do GELOS (3-155) para tirar dúvidas ou ajudar a resolver problemas com Linux ou outros softwares livres ou open source.
Caso tenha um problema ou precise de alguma ajuda, é só aparecer!

*Veja também nosso [blog post]({% link _posts/2024-08-17-plantoes.md %}) de anúncio dos plantões*

Confira abaixo as próximas datas

## Próximos Horários

| Data                | Horário                  | Voluntárie(s)   |
|---------------------|--------------------------|-----------------|
| 14/10/2024          |   15:10 ~ 17:00          | Luana e Yuri    |
| Mais datas em breve!|                          |                 |


*Para se voluntariar, basta [editar](https://github.com/gelos-icmc/site/blob/main/src/_projects/plantao.md) a tabela acima e adicionar os dias e horários que você estará na salinha para ajudar*

## Problemas Recorrentes

Tendo em vista manter uma documentação para consulta futura, aqui são listados os problemas que encontramos nos plantões (ou nas installfests), bem como suas respectivas soluções.

#### dpkg --configure -a congela em Pregenerating ConTeXtv MarkIV
- Data do ocorrido: 30/09/2024 (plantào)
- Voluntário: Luana, Furry
- Distro: Mint
- Descrição: dpkg --configure -a congela em Pregenerating ConTeXtv MarkIV
- Solução: dpkg -r context-modules; dpkg -r texlive-full; dpkg -r context; rodar o  dpkg --configure -a novamente; atualizar o sistema
  - Aparentemente uma outra possível solução é ficar segurando enter até destravar, mas isso não funcionou para a gente

#### "Operation system not found"
- Data do ocorrido: 14/03/2024 (installfest)
- Voluntário: Luana
- Distro: Fedora, openSUSE Tumbleweed
- Descrição: A sequência de eventos foi a seguinte
  - Tentamos instalar fedora, instalador não detectava disco algum
  - Instalamos openSUSE, funcionou (único problema sendo que o grub não detectava o Windows)
  - O instalendo decidiu que não queria mais dual boot
  - Possível razão para o fedora não ver o disco: aparentemente era um RAID segundo o gparted, apesar de ter apenas 1 ssd (?)
  - Apagamos o disco (new partition table) e testamos o fedora novamente
  - O fedora passou a detectar o disco
  - Desde então, qualquer distro que a gente tentava instalar a instalação finalizava com sucesso, mas então o computador falava “Operation System Not Found”
  - Testamos o openSUSE novamente e diversas formas diferentes de particionar, o problema persistia
  - Descobrimos que a opção “Boot from Hard Drive” do pendrive do openSUSE conseguia ‘bootar’ o grub, então deixamos um pendrive com o instalendo enquanto uma solução não era encontrava
- Workaround: Alguns dias depois arrumei usando um workaround: instalar o Windows novamente
  - Instalador do Windows dava diversos erros, por último o “Não podemos criar uma nova partição ou encontrar uma existente.“
  - Seguindo um [tutorial](https://br.easeus.com/partition-manager-tips/nao-foi-possivel-criar-nova-particao-ou-localizar-existente.html) pra esse problema ([archived](https://web.archive.org/web/20240321141548/https://br.easeus.com/partition-manager-tips/nao-foi-possivel-criar-nova-particao-ou-localizar-existente.html)) (usando o diskpart no prompt de comando) resolve
  - Instalação completa com sucesso e tudo funciona.
  - A partir daí, pode instalar o Linux por cima.
  - Agora fico curiosa para saber como que o Windows particionou o disco (talvez pudessemos usar isso como base para resolver o problema sem precisar instalar o windows), mas não me atentei em ver isso na hora.

#### Backlight não funcional
- Data do ocorrido: 14/03/2024 (installfest)
- Voluntário:
- Distro: Arch, Fedora, openSUSE Tumbleweed
- Descrição: A tela funcionava, no entanto a backlight parava assim que o sistema ou instalador bootava
- Solução: Nenhuma durante o evento. Link potencialmente relacionado: https://hansdegoede.livejournal.com/26427.html

## Plantões Passados

| Data                | Horário                  | Atendidos                                    | Voluntárie(s)      |
|---------------------|--------------------------|----------------------------------------------|--------------------|
| 30/09/2024          |   14:00 ~ 20:10          | 1 (atualizar R p/ inst GGally, Mint 21.1->22)| Furry, Luana e Niko|
| 25/09/2024          |   16:30 ~ 18:30          | 2 (troca hd+endeavour, troca teclado)        |        Luana       |     
| 20/09/2024          |   15:00 ~ 18:00          | 1 (NixOS)                                    |        Luana       |
| 16/09/2024          |   15:00 ~ 17:40          | 1 (pytorch)                                  | Furry, Luana e Yuri|
| 26/08/2024          |   15:10 ~ 18:40          | 1 (db-win10+kubuntu)                         | Furry, Luana e Yuri|
