require("lazy").setup({
  -- Telescope
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make'
  },
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
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
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

  -- Formatter
  "mhartington/formatter.nvim",

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },

  -- Lsp UI
  {
    'nvimdev/lspsaga.nvim',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
  }
})
