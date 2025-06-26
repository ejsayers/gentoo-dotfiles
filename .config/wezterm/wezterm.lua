-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.enable_wayland = true
config.color_scheme = "Tokyo Night"
-- config.color_scheme = "Dracula+"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_max_width = 48
config.window_background_opacity = 0.9
config.colors = {
	tab_bar = {
		background = "rgba(0,0,0,0)",
	},
}
config.keys = {
	{ key = "q", mods = "SHIFT|CTRL", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
	{ key = "LeftArrow", mods = "SHIFT|CTRL", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "RightArrow", mods = "SHIFT|CTRL", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "1", mods = "SHIFT|CTRL", action = wezterm.action.ActivateTab(1) },
}

for i = 1, 9 do
	table.insert(config.keys, { key = tostring(i), mods = "SHIFT|CTRL", action = wezterm.action.ActivateTab(i) })
end

-- This is where configuration choices are applied.
-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'

-- and finally, return the configuration to wezterm
return config
