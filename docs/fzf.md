# fzf

## Install

```bash
brew install fzf fd bat tree ripgrep
```

After stowing, add to `~/.zshrc`:

```bash
source ~/.config/fzf/fzf.sh
```

## Shell key bindings

| Key | Action |
|-----|--------|
| `Ctrl-T` | Paste fuzzy-found file path into the command line |
| `Ctrl-R` | Fuzzy search shell history |
| `Alt-C` | Fuzzy `cd` into a subdirectory |

## Shell functions

| Function | Description |
|----------|-------------|
| `fcd [dir]` | Fuzzy `cd` into any directory (including hidden); defaults to `.` |
| `flog` | Fuzzy browse git log with inline diff preview; `Enter` opens full diff in `less` |
| `fgb` | Fuzzy git branch switcher (local + remote) |

## Global fzf UI bindings

These apply inside any fzf picker.

| Key | Action |
|-----|--------|
| `Ctrl-/` | Toggle preview pane |
| `Ctrl-Y` | Copy selection to clipboard and exit |
| `Ctrl-A` | Select all matches |
| `Ctrl-D` | Deselect all |

## Previews

| Context | Preview |
|---------|---------|
| `Ctrl-T` (file) | `bat` with line numbers and syntax highlighting |
| `Ctrl-T` (directory) | `tree -C` (first 100 lines) |
| `Alt-C` | `tree -C` (first 60 lines) |
| `Ctrl-R` | Full command (2-line wrap window) |
| `fcd` | `tree -C` (first 60 lines) |
| `flog` | `git show` for the selected commit |
| `fgb` | `git log --oneline` for the selected branch |
