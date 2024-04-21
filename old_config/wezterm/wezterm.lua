require 'format'
require 'status'

return {
	color_scheme = "Catppuccin Mocha",
	window_background_opacity = 0.85,
    font = require("wezterm").font("MesloLGS NF"),
    font_size = 20.0,
    status_update_interval = 1000,

    keys = require("keybinds").keys,
    disable_default_key_bindings = true,
    leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 2000 },
}
