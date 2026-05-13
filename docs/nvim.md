# Neovim

## Install

```bash
brew install neovim ripgrep fd lazygit
xcode-select --install   # provides `make`, needed to build telescope-fzf-native and treesitter parsers
```

## Plugin manager

[lazy.nvim](https://github.com/folke/lazy.nvim) — auto-bootstrapped on first launch. No manual setup needed.

## Plugins

| Plugin | Purpose |
|--------|---------|
| `catppuccin/nvim` | Colorscheme (Mocha flavour) |
| `nvim-telescope/telescope.nvim` | Fuzzy finder |
| `nvim-telescope/telescope-fzf-native.nvim` | Native fzf sorter for Telescope |
| `christoomey/vim-tmux-navigator` | Seamless `C-h/j/k/l` navigation across Neovim windows and tmux panes |
| `nvim-treesitter/nvim-treesitter` | Syntax highlighting and indentation via Tree-sitter |
| `nvim-treesitter/nvim-treesitter-textobjects` | Text objects and motions based on Tree-sitter nodes |
| `nvimdev/dashboard-nvim` | Start screen (hyper theme) with recent files, projects, and session shortcuts |
| `rmagatti/auto-session` | Per-directory session save/restore with Telescope search |
| `lewis6991/gitsigns.nvim` | Inline git hunk signs, staging, blame, and diff |
| `akinsho/toggleterm.nvim` | Floating/split terminals; hosts lazygit |

## Leader key

`<Space>`

## General keymaps

| Key | Mode | Action |
|-----|------|--------|
| `jk` | insert | Escape to normal mode |
| `<Esc>` | normal | Clear search highlight |
| `x` | normal | Delete char without yanking |
| `p` | visual | Paste without yanking replaced text |
| `<` / `>` | visual | Indent and stay in visual mode |

## File / session

| Key | Action |
|-----|--------|
| `<leader>w` | Save |
| `<leader>q` | Quit |
| `<leader>Q` | Quit all (force) |

## Sessions (auto-session)

Sessions are saved automatically per directory on exit. Restore is manual.

| Key | Action |
|-----|--------|
| `<leader>ss` | Save session |
| `<leader>sr` | Restore session for current directory |
| `<leader>sf` | Search sessions (Telescope picker) |
| `<leader>sx` | Delete session |

The dashboard (hyper theme) opens on launch with shortcuts for find file (`f`), sessions (`s`), recent files (`r`), and plugin update (`u`).

## Window splits

| Key | Action |
|-----|--------|
| `<leader>sv` | Split vertical |
| `<leader>sh` | Split horizontal |
| `<leader>sd` | Close split |
| `<C-Up/Down>` | Resize height ±2 |
| `<C-Left/Right>` | Resize width ±2 |

## Buffer navigation

| Key | Action |
|-----|--------|
| `<S-l>` | Next buffer |
| `<S-h>` | Previous buffer |
| `<leader>bd` | Delete buffer |

## Line movement

| Key | Mode | Action |
|-----|------|--------|
| `<A-j>` | normal / visual | Move line(s) down |
| `<A-k>` | normal / visual | Move line(s) up |

## Search / scroll

| Key | Action |
|-----|--------|
| `n` / `N` | Next / prev match, cursor centered |
| `<C-d>` / `<C-u>` | Half-page scroll, cursor centered |

## Diagnostics

| Key | Action |
|-----|--------|
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>e` | Show diagnostic float |

## Treesitter text objects

| Key | Mode | Action |
|-----|------|--------|
| `af` / `if` | visual / operator | Around / inside function |
| `ac` / `ic` | visual / operator | Around / inside class |
| `]f` | normal | Next function start |
| `[f` | normal | Previous function start |

## Telescope — open pickers

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `<leader>fr` | Recent files |
| `<leader>fc` | Grep word under cursor |
| `<leader>fh` | Help tags |

## Telescope — inside a picker (insert mode)

| Key | Action |
|-----|--------|
| `<C-k>` | Move selection up |
| `<C-j>` | Move selection down |
| `<C-q>` | Send selected results to quickfix list and open it |

## Terminal (toggleterm)

| Key | Mode | Action |
|-----|------|--------|
| `<C-t>` | normal | Toggle floating terminal |
| `<leader>tf` | normal | Floating terminal |
| `<leader>th` | normal | Horizontal split terminal |
| `<leader>tv` | normal | Vertical split terminal |
| `<leader>ts` | visual | Send selection to terminal |
| `<Esc><Esc>` | terminal | Exit terminal mode (back to normal) |

## Git (gitsigns + lazygit)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>tg` | normal | Open lazygit (floating terminal) |
| `]h` | normal | Next hunk |
| `[h` | normal | Previous hunk |
| `<leader>hs` | normal / visual | Stage hunk |
| `<leader>hr` | normal / visual | Reset hunk |
| `<leader>hS` | normal | Stage buffer |
| `<leader>hu` | normal | Undo stage hunk |
| `<leader>hp` | normal | Preview hunk |
| `<leader>hb` | normal | Blame line (full) |
| `<leader>tb` | normal | Toggle inline line blame |
| `<leader>hd` | normal | Diff this |
