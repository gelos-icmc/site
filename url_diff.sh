#!/usr/bin/env bash

old="$(nix build --print-out-paths --no-link github:gelos-icmc/site)/public"
new="$(nix build --print-out-paths --no-link)/public"

# Ignorar PDFs
diff="$(diff "$old" "$new" -qr | grep -v '\.pdf')"

modified="$(echo "$diff" | grep "Files .* differ")"
if [ -n "$modified" ]; then
    echo "Caminhos modificados:";
fi
while IFS= read -r line; do
  # Limpar path, obter só URL relativo
  path="$(echo $line | cut -d ' ' -f2)"
  path="${path#"$old/"}"
  # Adicionar ao output
  if [ -n "$path" ]; then
    echo "- [/$path]($base_url/$path)"
  fi
done <<< "$modified"

added="$(echo "$diff" | grep "Only in $new")"
if [ -n "$added" ]; then
    echo ""
    echo "Caminhos adicionados";
fi
while IFS= read -r line; do
  path="$(echo $line | sed -E 's|Only in .+(/public)?(/[^/]+): (.*)|\2/\3|')"
  if [ -n "$path" ]; then
    echo "- [$path]($base_url$path)"
  fi
done <<< "$added"

removed="$(echo "$diff" | grep "Only in $old")"
if [ -n "$removed" ]; then
    echo ""
    echo "Caminhos removidos:";
fi
while IFS= read -r line; do
  path="$(echo $line | sed -E 's|Only in .+(/public)?(/[^/]+): (.*)|\2/\3|')"
  if [ -n "$path" ]; then
    echo "- $path"
  fi
done <<< "$removed"
