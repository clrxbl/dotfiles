-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.front_end = "WebGpu"

config.initial_cols = 112
config.initial_rows = 32
config.enable_scroll_bar = true
config.scrollback_lines = 10000
config.window_padding = { right = 16 }

config.color_scheme = 'Snazzy'
config.colors = { background = '#181818', scrollbar_thumb = '#2e2e2e' }
config.font = wezterm.font 'CaskaydiaCove Nerd Font Mono'

config.window_background_opacity = 0.7
config.macos_window_background_blur = 40

-- and finally, return the configuration to wezterm
return config
