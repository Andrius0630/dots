export MATUGEN_BACKGROUND="{{colors.surface.default.hex}}"
export MATUGEN_FOREGROUND="{{colors.on_surface.default.hex}}"
export MATUGEN_PRIMARY="{{colors.primary.default.hex}}"

# FZF dynamic color integration
export FZF_DEFAULT_OPTS=" \
  --color=bg+:{{colors.surface_container.default.hex}},bg:{{colors.surface.default.hex}} \
  --color=fg:{{colors.on_surface.default.hex}},fg+:{{colors.on_surface.default.hex}} \
  --color=hl:{{colors.primary.default.hex}},hl+:{{colors.primary.default.hex}}"
