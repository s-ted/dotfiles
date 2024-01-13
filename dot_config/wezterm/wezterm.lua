-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end



config.pane_focus_follows_mouse = true
config.default_cursor_style = "SteadyBar"

config.color_scheme = 'Monokai Pro (Gogh)'
config.font = wezterm.font 'FiraCode Nerd Font'

config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true




return config

