local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action
local config = {}

wezterm.on('gui-startup', function(window)
  local tab, pane, window = mux.spawn_window(cmd or {})
  local gui_window = window:gui_window();
  gui_window:perform_action(wezterm.action.ToggleFullScreen, pane)
end)

config.color_scheme = 'OneDark (base16)'
config.font = wezterm.font 'LigaMenlo Nerd Font'
config.font_size = 10
config.enable_tab_bar = false

config.keys = {
  {
    key = ' ',
    mods = 'CTRL',
    action = act.SendKey {
      key = ' ',
      mods = 'CTRL',
    }
  }
}

return config