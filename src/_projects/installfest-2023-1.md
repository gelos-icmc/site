---
title: Installfest 2023/1
author: Gabriel
lang: pt-BR
state: concluído
---

Evento de instalação de Linux, a ser realizado no dia 31/03 das 12h às 19h, no vão da biblioteca do ICMC.

## Distros

Todas são `x86-64` e, para agilizar a instalação, versão "offline" (não netinstall).

|--------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------------------------------------------------------------|
| **Nome e Versão**              | **Link da ISO**                                                                                                                                                                    | **Tamanho** | **Checksum** (SHA256)                                              |
|--------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------------------------------------------------------------|
| Arch Linux 2023.03.01          | [archlinux-2023.03.01-x86_64.iso](https://mirror.ufscar.br/archlinux/iso/2023.03.01/archlinux-2023.03.01-x86_64.iso)                                                               | 810MB       | `816758ba8fd8a06dff539b9af08eb8100c8bad526ac19ef4486bce99cd3ca18c` |
| Debian Bookworm (12)           | [debian-bookworm-DI-alpha2-amd64-DVD-1.iso](https://cdimage.debian.org/cdimage/bookworm_di_alpha2/amd64/iso-dvd/debian-bookworm-DI-alpha2-amd64-DVD-1.iso)                         | 3.7GB       | `7dfe0e883e601ef1fd9366bf64c01f4d91fdf03a25b3bc050f76801407aa6720` |
| EndeavourOS Cassi Nova 03-2023 | [EndeavourOS_Cassini_Nova-03-2023.iso](https://github.com/endeavouros-team/ISO/releases/download/1-EndeavourOS-ISO-releases-archive/EndeavourOS_Cassini_Nova-03-2023.iso)          | 1.9GB       | `164e181892ada8eed7a438c22d92892e30cee1c710ac0899a6e94ed68df9604c` |
| Fedora Workstation 37-1.7      | [Fedora-Workstation-Live-x86_64-37-1.7.iso](https://download.fedoraproject.org/pub/fedora/linux/releases/37/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-37-1.7.iso)      | 1.9GB       | `9c69005baafdba6e4ff04c1cf4779121b7fc9aacab80b4633394576da336a515` |
| Manjaro KDE 22.0.5.230316      | [manjaro-kde-22.0.5-230316-linux61.iso](https://download.manjaro.org/kde/22.0.5/manjaro-kde-22.0.5-230316-linux61.iso)                                                             | 3.8GB       | `7dc1b3330c7eb17ea97a97b5b7b943fba37027b340cd625f5cae7a6584342883` |
| NixOS 22.11.3366 GNOME         | [nixos-gnome-22.11.3366.5b7cd5c39be-x86_64-linux.iso](https://releases.nixos.org/nixos/22.11/nixos-22.11.3366.5b7cd5c39be/nixos-gnome-22.11.3366.5b7cd5c39be-x86_64-linux.iso)     | 2.2GB       | `b07736a32301cdaa53191d6d09b10bb77fb2c17eaafd03d5accfd3c44f2ee5f6` |
| NixOS 22.11.3366 Minimal       | [nixos-minimal-22.11.3366.5b7cd5c39be-x86_64-linux.iso](https://releases.nixos.org/nixos/22.11/nixos-22.11.3366.5b7cd5c39be/nixos-minimal-22.11.3366.5b7cd5c39be-x86_64-linux.iso) | 837MB       | `032e04ef6b3f8716eb1fa689dc746473b979ac7b41d392399e313e2e21fb8df9` |
| Pop_OS 22.04 25                | [pop-os_22.04_amd64_intel_25.iso](https://iso.pop-os.org/22.04/amd64/intel/25/pop-os_22.04_amd64_intel_25.iso)                                                                     | 2.5GB       | `945baf9da2b9883d1cfc841a63e5ac3b52df1b9038beef8ef3c95142cede0346` |
| Ubuntu 22.04.2 LTS             | [ubuntu-22.04.2-desktop-amd64.iso](https://releases.ubuntu.com/22.04.2/ubuntu-22.04.2-desktop-amd64.iso)                                                                           | 4.6GB       | `b98dac940a82b110e6265ca78d1320f1f7103861e922aa1a54e4202686e9bbd3` |
|--------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------------------------------------------------------------|

Lembre-se de usar o checksum. Além de eles estarem na tabela acima, você pode
baixar [esse arquivo](/assets/static/checksums-2023-1.sha256)
para checar as ISOs de forma super conveniente.

Entre no diretório com suas ISOs e rode:

```bash
sha256sum -c <(curl https://gelos.club/assets/static/checksums-2023-1.sha256)
```

O comando te avisará, para cada ISO, se o hash bate ou não.

## Voluntários

|-----------|----------------------|----------------------------------------------------|
| **Nome**  | **Email**            | **Horários**                                       |
|-----------|----------------------|----------------------------------------------------|
| Gabriel   | g.fontes@usp.br      | 12-13h, 16-19h. _Intermitente em outros horários._ |
|-----------|----------------------|----------------------------------------------------|
| Silmar    | silmar.junior@usp.br | 12-19h.                                            |
|-----------|----------------------|----------------------------------------------------|
| Júlio     | casemiroji@usp.br    | 12-13:30h, 14:30-19h.                              |
|-----------|----------------------|----------------------------------------------------|
| Guilherme | guircp@usp.br        | 13:30-19h.                                         |
|-----------|----------------------|----------------------------------------------------|
| Rodrigo   | rodrigogilgen@usp.br | 12-19h.                                            |
|-----------|----------------------|----------------------------------------------------|
| Ryan      | ryansouza@usp.br     | 12:30-17h30                                        | 
|-----------|----------------------|----------------------------------------------------|


## Pendrives

|-------------|---------------------------------|-----------|----------------------------------|
| **Tamanho** | **Descrição**                   | **Dono**  | **ISOs**                         |
|-------------|---------------------------------|-----------|----------------------------------|
| 256GB       | Sandisk Prateado (c/ USB A e C) | Gabriel   | Todas                            |
| 128GB       | Sandisk Prateado                | Gabriel   | Todas                            |
|-------------|---------------------------------|-----------|----------------------------------|
| 32GB        | Sandisk Preto e vermelho        | Silmar    | Todas                            |
| 15GB        | Utech Preto                     | Silmar    | Todas exceto ubuntu e Debian     |
|-------------|---------------------------------|-----------|----------------------------------|
| 64GB        | Adata                           | Júlio     | Todas                            |
|-------------|---------------------------------|-----------|----------------------------------|
| 8GB         | Sandisk Vermelho                | Guilherme | Arch e Fedora 37                 |
|-------------|---------------------------------|-----------|----------------------------------|
| 16GB        | Sandisk Preto e vermelho        | Rodrigo   | Todas menos Ubuntu, Pop e Debian |
| 8GB         | Sandisk Preto e vermelho (fita) | Rodrigo   | Ubuntu e Pop                     |
|-------------|---------------------------------|-----------|----------------------------------|
| 32GB        | Sandisk Preto mini              | Ryan      | Todas                            |
|-------------|---------------------------------|-----------|----------------------------------|

## Guestbook

|------------------------------------------|--------------|
| **Nome**                                 | **Instalou** |
|------------------------------------------|--------------|
| Nicolas Souza                            | Ubuntu       |
|------------------------------------------|--------------|
| Vinicius Neus                            | Ubuntu       |
|------------------------------------------|--------------|
| Giovanna de Andrade                      | Fedora       |
|------------------------------------------|--------------|
| Isadora Parillo                          | POP OS       |
|------------------------------------------|--------------|
| Sergio Barroso                           | Ubuntu       |
|------------------------------------------|--------------|
| Roberto Filho                            | Ubuntu       |
|------------------------------------------|--------------|
| Yuri Pereira                             | Ubuntu       |
|------------------------------------------|--------------|
| Ayrton Filho                             | Fedora       |
|------------------------------------------|--------------|
| Thiago Araujo                            | Fedora       |
|------------------------------------------|--------------|
| Felipe Machado                           | Ubuntu       |
|------------------------------------------|--------------|
| Flavio Vasini                            | Ubuntu       |
|------------------------------------------|--------------|
| Leonardo Marangoni                       | Ubuntu       |
|------------------------------------------|--------------|
| Mateus Seffeck                           | Ubuntu       |
|------------------------------------------|--------------|
| Henrique Pinto                           | Manjaro      |
|------------------------------------------|--------------|
| Gustavo Bleis                            | Kali         |
|------------------------------------------|--------------|
| Daniela da Silva                         | Ubuntu       |
|------------------------------------------|--------------|
| Guilherme de Freitas                     | ---          |
|------------------------------------------|--------------|
| Hugo Borges                              | Ubuntu       |
|------------------------------------------|--------------|
| Edmur Neto                               | Ubuntu       |
|------------------------------------------|--------------|
| Gabriel Leone                            | Ubuntu       |
|------------------------------------------|--------------|
| Antônio Neto                             | Ubuntu       |
|------------------------------------------|--------------|
| Anderson Lauinscky                       | Debian       |
|------------------------------------------|--------------|
| Guilherme Bandeira                       | EndeavourOS  |
|------------------------------------------|--------------|
| Albert Shoji                             | Ubuntu       |
|------------------------------------------|--------------|
| Marina Gandolfi                          | Fedora       |
|------------------------------------------|--------------|
| Eder de Brito                            | Fedora       |
|------------------------------------------|--------------|
| Nina Pinheiro                            | Ubuntu       |
|------------------------------------------|--------------|
| Bruno Sakaji                             | Ubuntu       |
|------------------------------------------|--------------|
| Henrique Zucoloto                        | Ubuntu       |
|------------------------------------------|--------------|
| Daniel Brasilino                         | ---          |
|------------------------------------------|--------------|
| Karl Altenhofen                          | ---          |
|------------------------------------------|--------------|
| Waltham Dutra                            | ---          |
|------------------------------------------|--------------|


## Flyer

![flyer](https://cloud.gelos.club/s/Xc54aS3He2FfcT8/preview)
/* vim: set nowrap: */
