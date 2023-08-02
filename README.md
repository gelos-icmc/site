# GELOS - Site institucional

Esse repositório contém o site institucional do [**GELOS** (**Grupo de Extensão
em Livre & Open Source**)](https://gelos.club).

## Como contribuir

Para pequenas contribuições, você pode fazer direto pela UI do GitHub. A
maioria das páginas estão em markdown, e cada coleção pode ser encontrada em
sua pasta específica (`_posts`, `_meetings`, `_projects`, etc). O rodapé de
cada página tem um link para seu código fonte no GitHub, então você pode
visitar este link para encontrar o que está buscando

Para edições maiores, pedimos que você clone o repositório e rode o site
localmente. Não se preocupe, é bem simples.

## Desenvolvimento e dependências

### Com Nix

A forma mais fácil é usando o [Nix](https://nixos.org/nix), o gerenciador de
pacotes e sistema de builds que usamos nos projetos do GELOS..

Basta usar `nix develop` para entrar numa shell com tudo que você precisa para
desenvolver. Nessa shell você pode usar os comandos do jekyll, como `jekyll
serve`.

Você também pode usar `nix build` e `nix run` para construir/servir o site
preparado para release.

### Manualmente

Baixe o `ruby` [seguindo os passos
relevantes](https://www.ruby-lang.org/en/documentation/installation/) para seu
ambiente.

Use `bundle install` para instalar as dependências da `Gemfile`, e execute o
jekyll usando `bundle exec jekyll` (por exemplo, `bundle exec jekyll serve`)


## Convenções

No momento ainda não temos páginas internacionalizadas, mas a convenção é que a
URL siga sempre o idioma do conteúdo da página. A primeira opção de idioma para
páginas acessadas por humanos deve ser o português.
