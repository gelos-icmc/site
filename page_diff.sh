#!/usr/bin/env bash

old="$(nix build --print-out-paths --no-link github:gelos-icmc/site)/public"
new="$(nix build --print-out-paths --no-link)/public"

modified="$(diff "$old" "$new" -qr | grep "Files .* differ")"
if [ -n "$modified" ]; then
    echo "Páginas alteradas:";
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

added="$(diff "$old" "$new" -qr | grep "Only in $new")"
if [ -n "$added" ]; then
    echo "Páginas adicionadas:";
fi
while IFS= read -r line; do
  path="$(echo $line | cut -d ' ' -f4)"
  if [ -n "$path" ]; then
    echo "- [/$path]($base_url/$path)"
  fi
done <<< "$added"

removed="$(diff "$old" "$new" -qr | grep "Only in $old")"
if [ -n "$removed" ]; then
    echo "Páginas removidas:";
fi
while IFS= read -r line; do
  path="$(echo $line | cut -d ' ' -f4)"
  if [ -n "$path" ]; then
    echo "- [/$path]($base_url/$path)"
  fi
done <<< "$removed"
