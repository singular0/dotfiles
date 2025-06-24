-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- Start first window in fullscreen mode
wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

-- This table will hold the configuration
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Use macOS native fullscreen mode
config.native_macos_fullscreen_mode = true

-- Configure GUI font
config.font_size = 14.0

-- Configure color scheme
config.color_scheme = 'astrodark'

-- Disable audible bell
config.audible_bell = 'Disabled'

-- Enable visual bell
config.visual_bell = {
  fade_in_function = 'EaseIn',
  fade_in_duration_ms = 50,
  fade_out_function = 'EaseOut',
  fade_out_duration_ms = 25,
}

config.colors = {
  visual_bell = '#202020',
}

-- Return the configuration to wezterm
return config

