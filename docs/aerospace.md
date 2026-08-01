# AeroSpace

macOS tiling window manager. No SIP disable required.

## Install

```bash
brew install --cask nikitabobko/tap/aerospace
```

## Keybindings

Modifier: `alt`

### Focus

| Key           | Action                          |
| ------------- | ------------------------------- |
| `alt-h/j/k/;` | Focus window left/down/up/right |

`right` is bound to `;` rather than `l` because `alt-l`/`alt-shift-l` type `ł`/`Ł` on the
Polish layout, and AeroSpace would swallow them.

### Move window

| Key                 | Action                          |
| ------------------- | ------------------------------- |
| `alt-shift-h/j/k/;` | Move window in direction        |
| `alt-shift-[`       | Move window to previous monitor |
| `alt-shift-]`       | Move window to next monitor     |

### Workspaces

| Key                  | Action                                  |
| -------------------- | ---------------------------------------- |
| `alt-1`, `alt-2`, `alt-3` | Switch to workspace (main monitor)  |
| `alt-4`              | Switch to unassigned workspace (secondary monitor) |
| `alt-b`              | Switch to Brave workspace                |
| `alt-t`              | Switch to terminal workspace              |
| `alt-v`              | Switch to VSCode workspace                |
| `alt-shift-1/2/3/4/b/t/v` | Move window to workspace (and follow) |

| `alt-tab`        | Toggle between last two workspaces    |
| `alt-shift-tab`  | Move workspace to next monitor        |

### Layout

| Key           | Action                                      |
| ------------- | ------------------------------------------- |
| `alt-/`       | Toggle tiles layout (horizontal ↔ vertical) |
| `alt-,`       | Toggle accordion layout                     |
| `alt-f`       | Toggle fullscreen                           |
| `alt-shift--` | Shrink window                               |
| `alt-shift-=` | Grow window                                 |

### Misc

| Key           | Action        |
| ------------- | ------------- |
| `alt-shift-r` | Reload config |

## App → workspace assignments

| App           | Workspace | Monitor     |
| ------------- | --------- | ----------- |
| —             | 1–3       | Main        |
| —             | 4         | Secondary   |
| Brave Browser | 5         | Secondary   |
| Ghostty       | 6         | Secondary   |
| VSCode        | 7         | Secondary   |

## Monitor order

Workspaces 1–3 are pinned to monitor 1 (main), 4–7 to monitor 2 (secondary).
Adjust `[workspace-to-monitor-force-assignment]` in `.aerospace.toml` if your monitor order differs.
