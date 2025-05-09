# Description

Font - JetBrainsMono Nerd Font FIRA CODE (use diff for non-ascii)

brew install --cask font-fira-code-nerd-font

Ripgrep (telescope dependencies)

## Tmux

[Cheatsheet](https://tmuxcheatsheet.com/)

## General

Leader: <kbd>Space</kbd>

Exit insert mode: <kbd>Leader</kbd> <kbd>j</kbd> <kbd>k</kbd>

Increment: <kbd>Leader</kbd> <kbd>+</kbd>

Decrement: <kbd>Leader</kbd> <kbd>-</kbd>

Split window vertically: <kbd>Leader</kbd> <kbd>|</kbd>

Split window horizontally: <kbd>Leader</kbd> <kbd>-</kbd>

Make split windows equal width & height: <kbd>Leader</kbd> <kbd>s</kbd> <kbd>e</kbd>

Close current split window: <kbd>Leader</kbd> <kbd>s</kbd> <kbd>x</kbd>

## Plugin Manager [lazy.nvim](https://github.com/folke/lazy.nvim)

call `:Lazy` to install/update packages

## Theme [vscode.nvim](https://github.com/Mofiqul/vscode.nvim)

## Dashboard [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)

## Telescope [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

Find files: <kbd>Leader</kbd> <kbd>f</kbd> <kbd>f</kbd>

Find string by typing in the cwd: <kbd>Leader</kbd> <kbd>f</kbd> <kbd>g</kbd>

Find string under cursor in the cwd: <kbd>Leader</kbd> <kbd>f</kbd> <kbd>c</kbd>

List open buffers: <kbd>Leader</kbd> <kbd>f</kbd> <kbd>b</kbd>

List available help tags: <kbd>Leader</kbd> <kbd>f</kbd> <kbd>h</kbd>

## Windows navigation [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

## Status Line [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

////////////////////

## Nvim-tree

Toggle file explorer: <kbd>Leader</kbd> <kbd>e</kbd>

## Nvim-cmp

Show completion suggestions: <kbd>Leader</kbd> <kbd>space</kbd>

Close completion suggestions: <kbd>Leader</kbd> <kbd>e</kbd>

## Toggleterm

Open/Close terminal: <kbd>Leader</kbd> <kbd>t</kbd> <kbd>r</kbd>

## Telescope

Find files: <kbd>Leader</kbd> <kbd>f</kbd> <kbd>f</kbd>

Find string by typing in the cwd: <kbd>Leader</kbd> <kbd>f</kbd> <kbd>s</kbd>

Find string under cursor in the cwd: <kbd>Leader</kbd> <kbd>f</kbd> <kbd>c</kbd>

List open buffers: <kbd>Leader</kbd> <kbd>f</kbd> <kbd>b</kbd>

List available help tags: <kbd>Leader</kbd> <kbd>f</kbd> <kbd>h</kbd>

## Comment

Toggles the current line using linewise comment: <kbd>g</kbd> <kbd>c</kbd> <kbd>c</kbd>

Toggles the current line using blockwise comment: <kbd>g</kbd> <kbd>b</kbd> <kbd>c</kbd>

## Surround

TODO...

## Bufferline

TODO...

## Lspsaga

TODO...

## Gitsigns

TODO...

# Features

- Colorscheme [vscode.nvim](https://github.com/Mofiqul/vscode.nvim)
- File explorer [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- Windows navigation [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
- Statusbar [lualine](https://github.com/nvim-lualine/lualine.nvim)
- Autocompletion [cmp](https://github.com/hrsh7th/nvim-cmp)
- Terminal [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- Treesitter [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- LSP [nvim-lsp](https://github.com/neovim/nvim-lspconfig)
- Fuzzy finder [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- Comments [comment.nvim](https://github.com/numToStr/Comment.nvim)
- Surround [vim-surround](https://github.com/tpope/vim-surround)
- Tabs [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- Lsp Saga [lspsaga.nvim]()
- Formatting and linting [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)

# Issues

Lualine redraws screen and because of that the intro screen dissapears: [issue](https://github.com/nvim-lualine/lualine.nvim/issues/733)
