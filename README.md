# GELOS - Site institucional

Esse repositório contém o site institucional do [**GELOS** (**Grupo de Extensão Livre & Open Source**)](https://gelos.misterio.me).

## Como contribuir

### Conteúdo
Basta adicionar (ou modificar) páginas ou posts dentro de `_pages` e `_posts`. Abra um Merge Request para sua mudança.

É possível fazer modificações simples direto da interface do gitlab.

### Assuntos mais complexos

Para MRs mais complicados, é importante baixar o [jekyll](https://jekyllrb.com/) e testar o site durante o processo.

Basta instalar e usar os comandos usuais (`jekyll build` ou `jekyll serve`) durante o desenvolvimento.

Caso você tenha o [nix](https://nixos.org/), basta usar `nix develop` para obter uma shell com tudo que você precisa.

## Estrutura do repositório

### Conteúdo

- `_posts`: Posts (notícias, eventos, documentos). Devem ser criados dentro da pasta da respectiva categoria, e com data no nome (exemplo: `2022-01-05-titulo-exemplo.md`). Escreva preferencialmente em markdown.
- `_pages`: Páginas fixas do site, desde home até indexação das categorias. Podem ser escritos com qualquer extensão, mas normalmente é usado markdown para páginas simples e html quando se exige mais controle.

### Disposição e estilos
- `_data`: Dados estruturados para serem reusados no site. Por exemplo lista de navegação ou de pessoas.
- `_includes`: Componentes que podem ser reusados em qualquer página.
- `_layouts`: Layouts para cada tipo de página. Atualmente temos `default` (inclui o básico de todas as páginas) e `post` (adiciona autor, data, etc).
- `_sass`: Arquivos SASS (`.scss` ou `.sass`) para definir estilos. Essa pasta é especificamente para arquivos de estilo a serem "incluidos".
- `assets` Arquivos que serão servidos na pasta `assets`, inclui favicon e estilização principal (que importa arquivos da `_sass`).

### Configurações e CI/CD
- `.gitlab-ci.yml`: Manifesto para compilar e lançar o site automaticamente.
- `_config.yml`: Configurações do site.
- `default.nix`, `flake.nix` e `flake.lock`: Tooling e definições do pacote, feitas com o gerenciador de pacotes nix.
