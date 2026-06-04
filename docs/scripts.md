# scripts

Custom shell scripts and ZLE keybindings, managed as a stow package.

Stows to `~/.config/scripts/`.

## Keybindings

All ZLE keybindings live in `keybindings.zsh`. Source it from `~/.zshrc` after any files that define the functions it references:

```zsh
[[ -f ~/.config/scripts/keybindings.zsh ]] && source ~/.config/scripts/keybindings.zsh
```

| Keybind | Action |
|---------|--------|
| `Ctrl-T` | Run `tmux-start` (start tmux sessions and attach) |
| `Ctrl-B` | Open bookmark navigator (fzf, defined in `nav.zsh`) |

## Scripts

### tmux-start

`~/.config/scripts/tmux-start/tmux-start`

Creates predefined tmux sessions and attaches to the main one. Edit the script to add or change sessions.

## Adding a new script

1. Create `scripts/.config/scripts/<name>/<name>` with a `#!/usr/bin/env bash` shebang
2. `chmod +x` it
3. Add a ZLE widget + `bindkey` entry in `keybindings.zsh` if you want a keybind
