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
| `tmux-plugins/tmux-resurrect` | Save and restore sessions manually |

## Prefix key

`Ctrl+a`

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

## Session management

### Create

```bash
tmux new-session -s <name> -c <directory>
```

### Detach (leave session running in background)

```
Prefix + d
```

### Switch between sessions

```
Prefix + s       # interactive list, navigate with j/k, Enter to switch
```

```bash
tmux switch-client -t <name>   # from terminal
tmux attach -t <name>          # reattach from outside tmux
```

Sessions are listed in creation order. To control order, prefix names with letters/numbers (`a-dev-config`, `b-dev-main`) — the list sorts alphabetically.

### Kill a session

```
Prefix + :kill-session          # kills current session, drops to terminal
```

```bash
tmux kill-session -t <name>    # from terminal
tmux kill-server               # kill all sessions and the tmux server
```

## Session persistence (tmux-resurrect)

| Key | Action |
|-----|--------|
| `Prefix + Ctrl-s` | Save session |
| `Prefix + Ctrl-r` | Restore session |

Saves/restores windows, panes, layout, and working directories. `claude` processes are also restored automatically.

## Notable settings

| Setting | Value |
|---------|-------|
| Mouse | enabled |
| Escape time | 0 ms (no delay after `Esc`) |
| Window/pane base index | 1 |
| Scroll history | 50 000 lines |
| Undo (persistent) | via `undofile` in Neovim |
