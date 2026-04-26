# tmux

## Install

```bash
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

After stowing, open tmux and press `Prefix + I` to install plugins.

## Plugins

| Plugin | Purpose |
|--------|---------|
| `tmux-plugins/tpm` | Plugin manager |
| `catppuccin/tmux#v2.1.3` | Catppuccin Mocha status bar theme |

## Prefix key

`Ctrl+b`

## Pane / window management

| Key | Action |
|-----|--------|
| `Prefix + \|` | Split pane vertically (opens in current path) |
| `Prefix + -` | Split pane horizontally (opens in current path) |
| `Prefix + c` | New window (opens in current path) |

## Pane navigation (seamless with Neovim)

These bindings work transparently — if the focused pane is running Neovim, the key is forwarded to Neovim's window navigation instead.

| Key | Action |
|-----|--------|
| `C-h` | Move left |
| `C-j` | Move down |
| `C-k` | Move up |
| `C-l` | Move right |

> `C-l` (clear screen) is shadowed by the navigation binding above.
> Use `Prefix + C-l` to send a clear-screen to the shell.

## Notable settings

| Setting | Value |
|---------|-------|
| Mouse | enabled |
| Escape time | 0 ms (no delay after `Esc`) |
| Window/pane base index | 1 |
| Scroll history | 50 000 lines |
| Undo (persistent) | via `undofile` in Neovim |
