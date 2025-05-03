local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("FiraCode Nerd Font Mono", { weight = 'Regular' })
config.font_size = 20
config.harfbuzz_features = { 'calt=0' }

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.cursor_blink_rate = 0

config.colors = {
    foreground = "#dbdbdb",
    background = "#1e1e1e",
    cursor_bg = "#fefffe",
    cursor_border = "#fefffe",
    cursor_fg = "#000000",
    selection_bg = "#b3d7ff",
    selection_fg = "#000000",
    ansi = { "#14191e", "#b43c29", "#00c200", "#c7c400", "#2743c7", "#bf3fbd", "#00c5c7", "#c7c7c7" },
    brights = { "#676767", "#dc7974", "#57e690", "#ece100", "#a6aaf1", "#e07de0", "#5ffdff", "#feffff" }
}

config.keys = {
    -- Make Opt-h equivalent to Alt-b which many line editors interpret as backward-word
    { key = "h", mods = "OPT", action = wezterm.action { SendString = "\x1bb" } },
    -- Make Opt-l equivalent to Alt-f; forward-word
    { key = "l", mods = "OPT", action = wezterm.action { SendString = "\x1bf" } },
}

-- config.window_background_opacity = 0.9

return config
