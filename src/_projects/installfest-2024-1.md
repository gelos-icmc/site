---
title: Installfest 2024/1
author: Gabriel e Charles
lang: pt-BR
state: current
---

Evento de instalação de Linux, realizado no dia 14/03 das 14h às 19h, no vão da
biblioteca do ICMC.

[**Post de divulgação**](/2024/03/01/installfest-2024-1.html)

**Tarefas pendentes**:
- [ ] Flyer
- [ ] Post de divulgação
- [ ] ISOs
    - [x] Preencher tabela com links atuais
    - [ ] Criar arquivo com checksums
- [ ] Levantar pessoas
    - [ ] Preencher tabela de voluntários
    - [ ] Preencher tabela de pendrives

**Pós-evento**:
- [ ] Adicionar números (instalações, pessoas presentes, etc)

## Distros

Todas são `x86-64` e, para agilizar a instalação, versão "offline" (não
netinstall).

| **ISO**                                                                                                                                                       | **Tamanho** | **Checksum** (SHA256)                                              |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------------------------------------------------------------|
| [Debian 12.5.0](https://cdimage.debian.org/debian-cd/12.5.0/amd64/iso-dvd/debian-12.5.0-amd64-DVD-1.iso)                                                      | 3.72GB      | `1e8037d1d208b4d6a2f4ff54cacc8df8f6e51ec326be8598661a1d9988839158` |
| [Ubuntu 23.10.1](https://releases.ubuntu.com/23.10.1/ubuntu-23.10.1-desktop-amd64.iso)                                                                        | 4.82GB      | `3b6c5275366d02160554fa5703add462da3b8ce9be1749f8806e8dbbffaa2b5a` |
| [PopOS 22.04_38](https://iso.pop-os.org/22.04/amd64/intel/38/pop-os_22.04_amd64_intel_38.iso)                                                                 | 2.47GB      | `7ba5093966a1b7c1abc7ba9f8b95ca976cd99b04768da70f0a8fcd2cda31a857` |
| [Linux Mint 21.3 (Cinnamon)](https://mirror.ufscar.br/mint-cd/stable/21.3/linuxmint-21.3-cinnamon-64bit.iso)                                                  | 2.86GB      | `5aa24abbc616807ab754a6a3b586f24460b0c213b6cacb0bf8b9a80b65013ecc` |
| [Arch Linux 2024.03.01](https://mirror.ufscar.br/archlinux/iso/2024.03.01/archlinux-2024.03.01-x86_64.iso)                                                    | 0.94GB      | `0062e39e57d492672712467fdb14371fca4e3a5c57fed06791be95da8d4a60e3` |
| [EndeavourOS Galileo 2024.01.25](https://mirrors.gigenet.com/endeavouros/iso/EndeavourOS_Galileo-Neo-2024.01.25.iso)                                          | 2.69GB      | `897f24bdb4c0e297406668c9e4d7ab637fe081b0f54ade5d4f2a276a009bcd91` |
| [NixOS 23.11.4976 (Minimal)](https://releases.nixos.org/nixos/23.11/nixos-23.11.4976.79baff8812a0/nixos-minimal-23.11.4976.79baff8812a0-x86_64-linux.iso)     | 0.97GB      | `4494fd9dd7f3b181b7fb3ae94e2403d4d20777197b8a94f670561c1e19c1e184` |
| [openSUSE Tumbleweed 20240306](https://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-DVD-x86_64-Snapshot20240306-Media.iso)                        | 4.35GB      | `3491a94ad0c2bd5457be154f5f530d7a46dc2d56ea37f62b290cd8c3536aaa89` |
| [Fedora Workstation 39-1.5](https://download.fedoraproject.org/pub/fedora/linux/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso) | 1.98GB      | `af52046e43c6f06afd3456d2a9a36dd9782fcb204f05a21b1c31f593db36a8e8` |


Lembre-se de usar o checksum. Além de eles estarem na tabela acima, você pode
baixar [este arquivo](/assets/static/checksums-2024-1.sha256) para checar as
ISOs de forma super conveniente.

Entre no diretório com suas ISOs e rode:

```bash
sha256sum -c <(curl https://gelos.club/assets/static/checksums-2024-1.sha256)
```

O comando te avisará, para cada ISO, se o hash bate ou não.

## Voluntários

| **Nome**                  | **Email**                | **Horários** |
|---------------------------|--------------------------|--------------|
|     Luana                 |   neder@usp.br           | 14:01 ~ 17:27|
| Vinicius Dada Moura Santos|vinicius.santos927@usp.br | 17h-19h      |
| Tarcísio L. Oliveira      | tarcisio.oliveira@usp.br | 14h-19h      |
| João Gabriel              |  joaog.bastos@usp.br     | 16:10 - 18:00|
| Gabriel Fontes            | g.fontes@usp.br          | 14h-17h      |
| Luís Peres                | luisfvperes@usp.br       | 14h-15h, 17h-19h|


## Pendrives

| **Tamanho** | **Descrição**                                 | **Dono**       | **ISOs**             |
|-------------|-----------------------------------------------|----------------|--------------------------|
|    16 GB    | SanDisk vermelho e preto c/ chaveiro openSUSE |     Luana      | openSUSE Tumbleweed  |
|    64 GB    | SanDisk USB3.0 preto c/ chaveiro GELOS        |     Luana      | Todas                |   
|    1 GB     | Dane-Elec azul-marinho c/ chaveiro smile      |     Luana      | (?) To-be-decided        |
|    16 GB    | Sandisk Vermelho e Preto                      |    Tarcísio    | Ubuntu, Fedora, Mint |
| 256GB       | Sandisk Prata (USB-A + USB-C)                 | Gabriel Fontes | Todas                |
| 128GB       | Sandisk Prata                                 | Gabriel Fontes | Todas                |
| 64 GB       | Cinza com cordão vermelho                     | Luís Peres     | Todas                |
| 2 GB        | Kingston vermelho                             | Luís Peres     | TBD                  |


## Flyer

![Flyer](https://cloud.gelos.club/s/EHmYwea5kQT6Y7X/preview)
