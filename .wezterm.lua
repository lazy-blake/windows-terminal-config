-- This file is used to configure WezTerm, a terminal emulator.
-- pulling the wezterm api
local wezterm = require("wezterm")

--this will hold the configuration
local config = wezterm.config_builder()

-- use "powershell" instead of pwsh if you have powershell version 5 installed
config.default_prog = { "pwsh", "-NoLogo" }

config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 12.0
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.window_background_opacity = 0.95

config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

-- keep adding more configuration options here

return config
