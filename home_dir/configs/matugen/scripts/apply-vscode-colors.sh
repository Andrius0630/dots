#!/usr/bin/env sh
set -e

colors_file="$HOME/.config/matugen/generated/vscode-colors.json"
settings_file="$HOME/.config/Code/User/settings.json"

[ -f "$colors_file" ] || exit 0
[ -f "$settings_file" ] || exit 0

tmp_file="$(mktemp)"
jq --slurpfile colors "$colors_file" \
  '.["workbench.colorCustomizations"] = $colors[0]' \
  "$settings_file" > "$tmp_file" \
  && mv "$tmp_file" "$settings_file"
