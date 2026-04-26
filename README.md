# dev-config

Personal development environment configurations, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

```bash
./stow.sh
```

## Requirements

### Fonts

- **FiraCode Nerd Font** — required for Ghostty

  ```bash
  brew install --cask font-fira-code-nerd-font
  ```

## Configs

- **Ghostty** — terminal emulator
- **Starship** — cross-shell prompt (Catppuccin Mocha theme)

  Install Starship:

  ```bash
  brew install starship
  ```

  Add to your shell init (`~/.zshrc`):

  ```bash
  eval "$(starship init zsh)"
  ```

- **fzf** — fuzzy finder for the terminal

  Install fzf and fd (used as the default file finder):

  ```bash
  brew install fzf fd bat tree
  ```

  After stowing, add to `~/.zshrc`:

  ```bash
  source ~/.config/fzf/fzf.sh
  ```

  ### Key bindings (enabled after sourcing)

  | Key | Action |
  |-----|--------|
  | `Ctrl-T` | Paste fuzzy-found file path into the command line |
  | `Ctrl-R` | Fuzzy search shell history |
  | `Alt-C` | Fuzzy cd into a subdirectory |

  ### Shell functions (defined in `fzf.sh`)

  | Function | Description |
  |----------|-------------|
  | `fcd [dir]` | Fuzzy cd into any directory (including hidden) |
  | `flog` | Fuzzy browse git log with diff preview |
  | `fgb` | Fuzzy git branch switch |

  ### Global keybinds in fzf UI

  | Key | Action |
  |-----|--------|
  | `Ctrl-/` | Toggle preview pane |
  | `Ctrl-Y` | Copy selection to clipboard and exit |
  | `Ctrl-A` | Select all matches |
  | `Ctrl-D` | Deselect all |

- **my-bookmarks-manager** — fzf-powered directory bookmarks

  No dependencies beyond fzf (already required above).

  After stowing, add to `~/.zshrc`:

  ```bash
  [[ -f ~/.config/my-bookmarks-manager/nav.zsh ]] && source ~/.config/my-bookmarks-manager/nav.zsh
  ```

  | Command / Key | Description |
  |---------------|-------------|
  | `bm [label]` | Bookmark the current directory (prompts for label if omitted) |
  | `bmrm` | Interactively remove a bookmark via fzf |
  | `Ctrl-B` | Open fzf bookmark picker and cd to selection |

  Bookmarks are stored in `~/.config/my-bookmarks-manager/bookmarks` (tab-separated `label<TAB>path`), which is a symlink into the repo — so `bm` writes go straight to version control.
