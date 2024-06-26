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
config.window_padding = { right = 20 }

config.color_scheme = 'Snazzy'
config.colors = { background = '#181818', scrollbar_thumb = '#2e2e2e' }
config.font = wezterm.font 'BerkeleyMono Nerd Font'
config.font_size = 12
-- config.freetype_load_target = "Mono"

config.window_background_opacity = 0.8
config.macos_window_background_blur = 60

-- disable copy on select
config.mouse_bindings = {
  {
    event = { Up = { streak = 1, button = "Left" } },
    mods = "NONE",
    action = wezterm.action.Nop,
  },
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CTRL',
    action = wezterm.action.OpenLinkAtMouseCursor,
  },
}

config.check_for_updates = false

-- and finally, return the configuration to wezterm
return config