# GELOS - Site institucional

Esse repositório contém o site institucional do [**GELOS** (**Grupo de Extensão
em Livre & Open Source**)](https://gelos.club).

## Como contribuir

### Conteúdo simples
Basta clonar o repositório, adicionar (ou modificar) **páginas ou posts**
dentro de `_pages` e `_posts`. Abra um Merge Request para sua mudança.

É possível fazer modificações simples direto da interface do github.

### Assuntos mais complexos

Para PRs mais complicados, é importante baixar o
[jekyll](https://jekyllrb.com/) e testar o site durante o processo.

Basta instalar e usar os comandos usuais (`jekyll build` ou `jekyll serve`)
durante o desenvolvimento.

Caso você tenha o [nix](https://nixos.org/), basta usar `nix develop` para
obter uma shell com tudo que você precisa.

## Convenções

### Idioma

Para páginas **navegadas por humanos** (HTML), a URL (decidido pelo nome do
arquivo ou atributo `permalink`) deve ter **o mesmo idioma** que o conteúdo da
página. A primeira opção de idioma deve ser o português. As páginas podem ter
versões internacionalizadas.

Como as **chaves** (nome de campos) e **variáveis** do jekyll são em inglês, as
nossas também estão em **inglês**. Os conteúdos (valores) nelas devem seguir o
idioma das páginas em que aparecem (na medida do possível).

Para páginas **acessadas programaticamente** (JSON, por exemplo), a URL e
conteúdo (na medida do possível) devem usar o mesmo idioma. A primeira opção de
idioma deve ser **inglês**, visto que nesses endpoints os nomes dos campos (que
estão em inglẽs) são expostos.

## Estrutura do repositório

### Conteúdo

- `_posts`: Posts (notícias, eventos, documentos). Devem ser criados dentro da
  pasta da respectiva categoria, e com data no nome (exemplo:
  `2022-01-05-titulo-exemplo.md`). Escreva preferencialmente em markdown.
- `_pages`: Páginas fixas do site, desde home até indexação das categorias.
  Podem ser escritos com qualquer extensão, mas normalmente é usado markdown
  para páginas simples e html quando se exige mais controle.

### Disposição e estilos
- `_data`: Dados estruturados para serem reusados no site. Por exemplo lista de
  navegação ou de pessoas.
- `_includes`: Componentes que podem ser reusados entre páginas.
- `_layouts`: Layouts base para cada tipo de página. Atualmente temos `default`
  (usado ou herdado em todas as páginas) e `post` (automaticamente insere
  certos dados).
- `_sass`: Arquivos SASS (`.scss` ou `.sass`) para definir estilos. Essa pasta
  é especificamente para arquivos de estilo a serem "incluidos".
- `assets` Arquivos que serão servidos na pasta `assets`, inclui favicon e
  estilização principal (que importa arquivos da `_sass`).

### Configurações e CI/CD
- `_config.yml`: Configurações do site.
- `default.nix`, `flake.nix` e `flake.lock`: Tooling e definições de
- distribuição, feitas com o gerenciador de pacotes nix.
