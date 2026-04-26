# my-bookmarks-manager

fzf-powered directory bookmarks for the shell.

## Setup

Requires `fzf` (installed with the fzf config). After stowing, add to `~/.zshrc`:

```bash
[[ -f ~/.config/my-bookmarks-manager/nav.zsh ]] && source ~/.config/my-bookmarks-manager/nav.zsh
```

## Commands

| Command / Key | Description |
|---------------|-------------|
| `bm [label]` | Bookmark the current directory (prompts for a label if omitted) |
| `bmrm` | Interactively remove a bookmark via fzf |
| `Ctrl-B` | Open fzf bookmark picker and `cd` to the selected entry |

## Storage

Bookmarks are stored in `~/.config/my-bookmarks-manager/bookmarks` as tab-separated `label<TAB>path` lines. This file is a symlink back into the repo, so new bookmarks are committed automatically when you run `git add`.
