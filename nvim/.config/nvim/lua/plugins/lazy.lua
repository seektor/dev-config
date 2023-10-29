local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Theme
  "Mofiqul/vscode.nvim",

  -- Dashboard
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },

  -- File Tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- Telescope
  { 'nvim-telescope/telescope-fzf-native.nvim',
   build = 'make' },
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Windows navigation
    'christoomey/vim-tmux-navigator',

  -- Status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },


  -- Autocompletion --

	-- Completion plugin
	"hrsh7th/nvim-cmp",

	-- Source for text in buffer (text scanning)
	"hrsh7th/cmp-buffer",

	-- Source for file system paths
	"hrsh7th/cmp-path",

	-- Source for lsp
	"hrsh7th/cmp-nvim-lsp",

	-- Displaying function signatures with the current parameter emphasized
	"hrsh7th/cmp-nvim-lsp-signature-help",


	-- Snippets --

	-- Snippet engine
	"L3MON4D3/LuaSnip",

	-- Autocompletion
	"saadparwaiz1/cmp_luasnip",


  -- Lsp servers--

  -- Package manager
	"williamboman/mason.nvim",

  -- Bridge between mason and lspconfig
	"williamboman/mason-lspconfig.nvim",

  -- Configs for the Nvim LSP Client
	"neovim/nvim-lspconfig",

	-- Vs-code like icons for autocompletion
	"onsails/lspkind.nvim",

  -- Linters and Formatters --

	-- Treesitter
	{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },

  -- Lsp UI
  {'nvimdev/lspsaga.nvim',     
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
  }
})