---
---
#!/bin/sh

set -e

LINKS="{%- for iso in site.data.if6.if6-isos -%}{{ iso["link"] }} {% endfor -%}"
NAMES="{%- for iso in site.data.if6.if6-isos -%}{{ iso["filename"] }} {% endfor -%}"

set -- $NAMES

echo ⚠️ ATENÇÃO: Este script irá baixar $# isos, chegando a aproximadamente 50GB. Tenha certeza de que quer fazer isso ou cancele imediatamente.
echo Os downloads serão feitos no diretório atual, $PWD

a=1
for i in $LINKS
do
  eval "nome=\${$a}"
  echo ⬇️ BAIXANDO $nome
  curl -O -L "$i"
  a=$((a + 1))
done

echo ✅ Downloads terminados! \($((a - 1)) isos baixadas\)

echo Conferindo checksums
sha256sum -c <(curl https://127.0.0.1:4000/assets/installfest/if6-checksums.sha256)

echo ℹ️ Agore é hora de copiar as isos para o pendrive com Ventoy ou grava-las diretamente no pendrive.
echo ⚠️ IMPORTANTE: Após a cópia estiver concluída, use o comando \'sync\' \(ou ejete seguramente pela sua DE\)!
echo ⚠️ IMPORTANTE: Após o sync, confira as checksums novamente!
echo ℹ️ É muito comum que arquivos se corrompam durante o download ou durante transferência para dispositivos USB \(principalmente quando não ejetados com segurança\), por isso é essencial que o dispositivo seja ejetado seguramente e que as checksums sejam conferidas!
echo ℹ️ Você pode conferir as checksums com o seguinte comando: 'sha256sum -c <(curl https://gelos.club/assets/installfest/if6-checksums.sha256)'
echo ⚠️ IMPORTANTE: Lembre de conferir as checksums!