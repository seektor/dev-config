# yazi

Terminal file manager with a three-pane layout (parent | current | preview).

## Install

```bash
brew install yazi
```

## Usage

```bash
yazi         # open in current directory
yazi <path>  # open at path
```

## Keybindings (custom)

| Key        | Action              |
|------------|---------------------|
| `gh`       | Go to home (`~`)    |
| `gc`       | Go to `~/.config`   |
| `gd`       | Go to `~/Downloads` |

All default yazi keybindings apply — arrow keys or hjkl to navigate, `Enter` to open, `d` to cut, `y` to copy, `p` to paste, `D` to delete, `r` to rename.

## Config

- `yazi.toml` — manager, preview, and opener settings (opens text files in Neovim)
- `keymap.toml` — custom go-to shortcuts
- `theme.toml` — placeholder (uses built-in theme)
