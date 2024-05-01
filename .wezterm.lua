local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font('Fira Code')
config.font_size = 16.0

config.color_scheme = 'Dracula (Official)'
config.scrollback_lines = 5000
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

return config