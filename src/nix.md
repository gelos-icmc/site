---
title: Nix
description: Aprenda a instalar e usar o gerenciador de pacotes que o GELOS utiliza em seus projetos
---

# Nix

O GELOS utiliza o gerenciador de pacotes Nix para gerir ambientes de desenvolvimento e CI. Utilizamos o sistema operacional NixOS nas nossas máquinas da produção, também.

Por isso, apesar de não ser obrigatório (e sempre vamos passar os passos para fazer manualmente também), recomendamos que você instale o Nix. O Nix pode ser instalado em qualquer Linux (incluindo WSL) ou Mac; você _não precisa_ usar NixOS para isso.

## Instalando

Basta acessar a página [de downloads no nixos.org](https://nixos.org/download#download-nix). Você pode instalar system-wide (geralmente é melhor) ou até sem privilégios root.

Também existe uma opção de binário estático, que não exige root ou qualquer outra modificação ou dependência no seu sistema. Nessa opção, a nix store pode inclusive ficar na sua home. Basta baixar e executar ([aarch64-linux](https://hydra.nixos.org/job/nix/master/buildStatic.aarch64-linux/latest/download-by-type/file/binary-dist), [x86_64-linux](https://hydra.nixos.org/job/nix/master/buildStatic.x86_64-linux/latest/download-by-type/file/binary-dist))

## Habilitando flakes e nix-command

<small>[Fonte: NixOS wiki](https://nixos.wiki/wiki/Flakes)</small>

Usamos as funcionalidades experimentais `nix-command` e `flakes`. No momento, o usuário precisa habilitá-las.

### Temporariamente

Você pode habilitar temporariamente adicionando `--extra-experimental-features 'nix-command flakes'` ao usar o comando `nix`, por exemplo:
```bash
nix --extra-experimental-features 'nix-command flakes' build .
```

Outra opção é usar a variável `NIX_CONFIG`:
```bash
export NIX_CONFIG="extra-experimental-features = nix-command flakes"
```

### Permanente

Em qualquer sistema com Nix, abra a `~/.config/nix/nix.conf` ou `/etc/nix/nix.conf` e adicione:
```
experimental-features = nix-command flakes
```

No NixOS, sua `nix.conf` provavelmente é gerida pelo NixOS, então você pode configurar issso pela sua `configuration.nix`:
```nix
{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
```

O análogo pode ser usado no home-manager, para gerir a sua `~/.config/nix/nix.conf`.

## Outros recursos

Essa página ainda é um esboço, por enquanto, aqui alguns links para documentações úteis:

- [Manual do Nix](https://nixos.org/manual/nix/stable/)
    - [Nova CLI](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix.html)
    - [Flakes](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html)
- [Wiki](https://nixos.wiki)
- [nix.dev](https://nix.dev)
- [Nix Pills](https://nixos.org/guides/nix-pills/)
- [Manual do NixOS](https://nixos.org/manual/nixos/stable/)
- [Livro não oficial "NixOS and flakes"](https://nixos-and-flakes.thiscute.world)
