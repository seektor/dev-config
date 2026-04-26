# Neovim

## Install

```bash
brew install neovim ripgrep fd
xcode-select --install   # provides `make`, needed to build telescope-fzf-native
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
