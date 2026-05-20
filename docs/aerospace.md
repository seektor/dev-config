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
| `alt-h/j/k/l` | Focus window left/down/up/right |

### Move window

| Key                 | Action                          |
| ------------------- | ------------------------------- |
| `alt-shift-h/j/k/l` | Move window in direction        |
| `alt-shift-[`       | Move window to previous monitor |
| `alt-shift-]`       | Move window to next monitor     |

### Workspaces

| Key            | Action                                |
| -------------- | ------------------------------------- |
| `alt-1`, `alt-2` | Switch to workspace (main monitor)  |
| `alt-b`        | Switch to Brave workspace             |
| `alt-t`        | Switch to terminal workspace          |
| `alt-v`        | Switch to VSCode workspace            |
| `alt-6`        | Switch to unassigned workspace        |
| `alt-shift-1/2/b/t/v/6` | Move window to workspace (and follow) |

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
| `alt-shift-;` | Reload config |

## App → workspace assignments

| App           | Workspace | Monitor     |
| ------------- | --------- | ----------- |
| —             | 1–2       | Main        |
| Brave Browser | 3         | Secondary   |
| Ghostty       | 4         | Secondary   |
| VSCode        | 5         | Secondary   |
| —             | 6         | Secondary   |

## Monitor order

Workspaces 1–2 are pinned to monitor 1 (main), 3–6 to monitor 2 (secondary).
Adjust `[workspace-to-monitor-force-assignment]` in `.aerospace.toml` if your monitor order differs.
