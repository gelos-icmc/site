---
---
# Copyright 2025 Luana Neder
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#!/bin/sh

set -e

LINKS="{%- for iso in site.data.if6.if6-isos -%}{{ iso["link"] }} {% endfor -%}"
NAMES="{%- for iso in site.data.if6.if6-isos -%}{{ iso["filename"] }} {% endfor -%}"

set -- $NAMES

echo "Este software é fornecido \"da forma em que se encontra\", sem quaisquer garantias, expressas ou implícitas, incluindo, mas não se limitando a, garantias de comercialização, adequação a um propósito específico e não violação de direitos. Em nenhuma hipótese os autores ou colaboradores serão responsáveis por quaisquer danos diretos, indiretos, incidentais, especiais, exemplares ou consequenciais (incluindo, mas não se limitando a, aquisição de bens ou serviços substitutos, perda de uso, dados ou lucros, ou interrupção de negócios), causados de qualquer forma e sob qualquer teoria de responsabilidade, seja por contrato, responsabilidade objetiva ou ato ilícito (incluindo negligência ou outra forma), decorrentes do uso deste software, mesmo que avisados da possibilidade de tais danos."

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
sha256sum -c <(curl https://gelos.club/assets/installfest/if6-checksums.sha256)

echo ℹ️ Agore é hora de copiar as isos para o pendrive com Ventoy ou grava-las diretamente no pendrive.
echo ⚠️ IMPORTANTE: Após a cópia estiver concluída, use o comando \'sync\' \(ou ejete seguramente pela sua DE\)!
echo ⚠️ IMPORTANTE: Após o sync, confira as checksums novamente!
echo ℹ️ É muito comum que arquivos se corrompam durante o download ou durante transferência para dispositivos USB \(principalmente quando não ejetados com segurança\), por isso é essencial que o dispositivo seja ejetado seguramente e que as checksums sejam conferidas!
echo ℹ️ Você pode conferir as checksums com o seguinte comando: 'sha256sum -c <(curl https://gelos.club/assets/installfest/if6-checksums.sha256)'
echo ⚠️ IMPORTANTE: Lembre de conferir as checksums!
