---
title: Infraestrutura
author: Gabriel
lang: pt-BR
state: current
---

Trabalhos de DevOps e SysOps no GELOS.

## Servidores

Visando ter uma infraestrutura aberta, de baixa manutenção, e fácil de contribuir, usamos [NixOS](https://nixos.org), uma distribuição declarativa de Linux, para gerir nossas máquinas.

Temos dois servidores: O [`galapagos`](https://github.com/gelos-icmc/infra/tree/main/hosts/galapagos) é usado para nossa infraestrutura principal (site, nextcloud, jitsi); o [`emperor`](https://github.com/gelos-icmc/infra/tree/main/hosts/emperor), temporariamente fora de uso (enquanto buscamos um lugar mais adequado para ele), deve ser usado no futuro como um [tilde](https://tildeverse.org)/[pubnix](https://github.com/cwmccabe/pubnixhist) para os membros do grupo, bem como hospedar VMs para projetos de ensino.

## Repositórios

Para facilitar contribuições, implantações, e preservar nosso software a longo prazo, quase sempre usamos o [Nix](https://nixos.org/guides/how-nix-works.html) como gerenciador de pacotes, ferramenta de build, e para criar ambientes de desenvolvimento.

O Nix standalone pode ser instalado em qualquer [Linux](https://nixos.org/download.html#nix-install-linux) (incluindo [WSL](https://nixos.org/download.html#nix-install-windows) e via [Docker](https://nixos.org/download.html#nix-install-docker)), e em outros sistemas Unix ([MacOS](https://nixos.org/download.html#nix-install-macos), [OpenBSD](https://openports.pl/path/sysutils/nix)). Geralmente também provemos passos para contribuir sem Nix, no entanto.

Todos os membros estão convidados a participar da nossa [organização no GitHub](https://github.com/gelos-icmc), basta enviar uma mensagem com seu nome de usuário pedindo para ser adicionado.

Usamos GitHub para aumentar nossa visibilidade e reduzir barreiras para contribuição, apesar da maioria do grupo preferir outros serviços mais livres. Pretendemos abrir um mirror (possivelmente no CodeBerg, SourceHut, ou num Gitea hosteado) no futuro. Caso queira contribuir sem ter uma conta do GitHub, você pode simplesmente nos enviar o patch por e-mail ou no telegram.

## Serviços externos

Nosso domínio hoje está registrado no [Gandi](https://gandi.net), mas pretendemos mudar em breve, após mudanças negativas no serviço de e-mail deles. 
