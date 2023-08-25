---
title: Installfest 2023/2
author: Gabriel e Charles
lang: pt-BR
state: current
---

Evento de instalação de Linux, a ser realizado no dia 31/08 das 14h às 19h, no
vão da biblioteca do ICMC.

[**Post de divulgação**](/2023/08/21/installfest-2023-2.html)

**Nota**: Projeto em construção, informações estão sujeitas à mudança.

**Tarefas pendentes**:
- [x] Post de divulgação
- [x] ISOs
    - [x] Preencher tabela
    - [x] Criar arquivo com checksums
- [ ] Levantar pessoas
    - [ ] Preencher tabela de voluntários
    - [ ] Preencher tabela de pendrives

## Distros

Todas são `x86-64` e, para agilizar a instalação, versão "offline" (não
netinstall).

| **Nome**                     | **ISO**                                                                                                                                                                               | **Tamanho** | **Checksum** (SHA256)                                            |
|------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|------------------------------------------------------------------|
| Debian 12                    | [debian-12.1.0-amd64-DVD-1.iso](https://cdimage.debian.org/debian-cd/current/amd64/iso-dvd/debian-12.1.0-amd64-DVD-1.iso)                                                             | 3.7GB       | 9168ff53d789537db4f5233e7dfa5e860519c44b68132b70805218f842b00041 |
| Ubuntu 22.04 LTS             | [ubuntu-22.04.3-desktop-amd64.iso](https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-desktop-amd64.iso)                                                                              | 4.7GB       | a435f6f393dda581172490eda9f683c32e495158a780b5a1de422ee77d98e909 |
| PopOS 22.04                  | [pop-os_22.04_amd64_intel_33.iso](https://iso.pop-os.org/22.04/amd64/intel/33/pop-os_22.04_amd64_intel_33.iso)                                                                        | 2.5GB       | ff834c94c6bc970a9508da24fccf32ac829a51030488e612cc1ab4ecf4e0859d |
| ZorinOS Core 16.3            | [Zorin-OS-16.3-Core-64-bit.iso](https://mirrors.edge.kernel.org/zorinos-isos/16/Zorin-OS-16.3-Core-64-bit.iso)                                                                        | 3G          | 58b99c071958c2039f51ddf2e10e7afb483fed3fcef5d91702bcb5db7b9e2432 |
| Linux Mint 21.2 (Cinnamon)   | [linuxmint-21.2-cinnamon-64bit.iso](https://mirror.ufscar.br/mint-cd/stable/21.2/linuxmint-21.2-cinnamon-64bit.iso)                                                                   | 2.8GB       | 116578dda0e03f1421c214acdd66043b586e7afc7474e0796c150ac164a90a2a |
| Arch Linux 2023.08.01        | [archlinux-2023.08.01-x86_64.iso](https://mirror.ufscar.br/archlinux/iso/2023.08.01/archlinux-2023.08.01-x86_64.iso)                                                                  | 793MB       | 3bf1287333de5c26663b70a17ce7573f15dc60780b140cbbd1c720338c0abac5 |
| EndeavourOS 2023_R3          | [Endeavouros_Cassini_Nova-03-2023_R3.iso](https://github.com/endeavouros-team/ISO/releases/download/1-EndeavourOS-ISO-releases-archive/Endeavouros_Cassini_Nova-03-2023_R3.iso)       | 1.9GB       | d5a4d7da138d4809667edba4044ae1868108b389c910d724aae0af6c346e6cd6 |
| NixOS 23.05 (Minimal)        | [nixos-minimal-23.05.2979.fc944919f743-x86_64-linux.iso](https://releases.nixos.org/nixos/23.05/nixos-23.05.2979.fc944919f743/nixos-minimal-23.05.2979.fc944919f743-x86_64-linux.iso) | 833MB       | 54df94f6398da25364712f711d4d2aaeef18900bf2d0e8104e42882e469665cb |
| OpenSUSE Tumbleweed 20230823 | [openSUSE-Tumbleweed-DVD-x86_64-Snapshot20230823-Media.iso](https://downloadcontentcdn.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-DVD-x86_64-Snapshot20230823-Media.iso)         | 4.4GB       | 6a73f3f9b2d9338df7b9290d3837eb23afaf00d4b304741b13d2d67c5b7eca19 |
| Fedora Workstation 38        | [Fedora-Workstation-Live-x86_64-38-1.6.iso](https://download.fedoraproject.org/pub/fedora/linux/releases/38/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-38-1.6.iso)         | 1.96GB      | 7a444a2e19012023bf0b015ae30135bafc5fd20f4f333310d42b118745093992 |


Lembre-se de usar o checksum. Além de eles estarem na tabela acima, você pode
baixar [este arquivo](/assets/static/checksums-2023-2.sha256) para checar as
ISOs de forma super conveniente.

Entre no diretório com suas ISOs e rode:

```bash
sha256sum -c <(curl https://gelos.club/assets/static/checksums-2023-2.sha256)
```

O comando te avisará, para cada ISO, se o hash bate ou não.

## Voluntários

| **Nome**               | **Email**                | **Horários** |
|------------------------|--------------------------|--------------|
| Gabriel Fontes         | g.fontes@usp.br          | 14-19h       |
| Tarcísio L. Oliveira   | tarcisio.oliveira@usp.br | 14-19h       | 
|                        |                          |              |
|                        |                          |              |


## Pendrives

| **Tamanho** | **Descrição**                 | **Dono**       | **ISOs**             |
|-------------|-------------------------------|----------------|----------------------|
| 256GB       | Sandisk Prata (USB-A + USB-C) | Gabriel Fontes | Todas                |
| 128GB       | Sandisk Prata                 | Gabriel Fontes | Todas                |
| 16GB        | Sandisk Vermelho e Preto      | Tarcísio       | Ubuntu, Fedora, Mint |
|             |                               |                |                      |
|             |                               |                |                      |


## Flyer

![Flyer](https://cloud.gelos.club/s/SNCiyGZq2n9bQ2X/download/flyer.png)
