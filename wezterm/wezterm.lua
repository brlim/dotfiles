local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.window_background_opacity = 0.87
config.font = wezterm.font_with_fallback({
	"Berkeley Mono",
	"JetBrains Mono",
})

local act = wezterm.action

if wezterm.target_triple == "x86_64-apple-darwin" or wezterm.target_triple == "aarch64-apple-darwin" then
	config.font_size = 16
	config.keys = {
		{
			key = "h",
			mods = "CMD|SHIFT",
			action = act.ActivatePaneDirection("Left"),
		},
		{
			key = "l",
			mods = "CMD|SHIFT",
			action = act.ActivatePaneDirection("Right"),
		},
		{
			key = "k",
			mods = "CMD|SHIFT",
			action = act.ActivatePaneDirection("Up"),
		},
		{
			key = "j",
			mods = "CMD|SHIFT",
			action = act.ActivatePaneDirection("Down"),
		},
		{
			key = "w",
			mods = "CMD|SHIFT",
			action = wezterm.action.CloseCurrentPane({ confirm = true }),
		},
	}
elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.default_prog = { "pwsh.exe" }
	config.font_size = 12
	config.keys = {
		{
			key = "h",
			mods = "ALT",
			action = act.ActivatePaneDirection("Left"),
		},
		{
			key = "l",
			mods = "ALT",
			action = act.ActivatePaneDirection("Right"),
		},
		{
			key = "k",
			mods = "ALT",
			action = act.ActivatePaneDirection("Up"),
		},
		{
			key = "j",
			mods = "ALT",
			action = act.ActivatePaneDirection("Down"),
		},
		{
			key = "w",
			mods = "ALT|CMD|SHIFT",
			action = wezterm.action.CloseCurrentPane({ confirm = true }),
		},
	}
end

return config
