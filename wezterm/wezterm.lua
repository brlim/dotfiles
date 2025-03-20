local wezterm = require("wezterm")

local act = wezterm.action

return {
	window_background_opacity = 0.87,
	font_size = 16,
	font = wezterm.font("Berkeley Mono"),

	keys = {
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
	},
}
