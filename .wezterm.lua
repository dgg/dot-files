local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.default_prog = { '/usr/local/bin/orb' }
wezterm.on('format-window-title', function ()
	return 'zsh in dgon@Ubuntu 24.04'
end)

config.initial_cols = 120
config.initial_rows = 30

config.font_size = 14
config.font = wezterm.font 'BlexMono Nerd Font'

config.color_scheme = 'Ubuntu'

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.window_frame = {
  font_size = 8.0,
  font = wezterm.font { family = 'Helvetica', weight = 'Bold' },
  active_titlebar_bg = '#300a24',
  inactive_titlebar_bg = '#300a24',
  button_fg = '#cccccc',
  button_bg = '#300a24',
  button_hover_fg = '#75507b',
  button_hover_bg = '#3b3052',
}

config.colors = {
  tab_bar = {
    background = '#300a24',
    active_tab = {
      bg_color = '#75507b',
      fg_color = '#f0f0f0',
      intensity = 'Bold'
    },
    inactive_tab = {
      bg_color = '#300a24',
      fg_color = '#cccccc',
    },
    inactive_tab_hover = {
      bg_color = '#3b3052',
      fg_color = '#f0f0f0',
      italic = false,
    }
  }
}

return config
