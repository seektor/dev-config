-- Bootstrap packer. Auto install if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Automatically run :PackerSync whenever plugins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return require("packer").startup(function(use)
    -- packer can manage itself
    use("wbthomason/packer.nvim")

	-- functions for other plugins
	use("nvim-lua/plenary.nvim")

     -- preferred colorscheme
	use("Mofiqul/vscode.nvim")

	-- fuzzy finder
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = '0.1.x' })

	-- file explorer
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
		  'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	  }

	-- windows navigation
	use("christoomey/vim-tmux-navigator")

	-- statusline
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	  }

	-- autocompletion
	-- completion plugin
	use("hrsh7th/nvim-cmp")
	-- source for text in buffer
	use("hrsh7th/cmp-buffer")
	-- source for file system paths
	use("hrsh7th/cmp-path")
	-- source for lsp
	use("hrsh7th/cmp-nvim-lsp")
	-- displaying function signatures with the current parameter emphasized
	use("hrsh7th/cmp-nvim-lsp-signature-help")

	-- managing lsp servers, linters & formatters
	use("williamboman/mason.nvim") 
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	-- vs-code like icons for autocompletion
	use("onsails/lspkind.nvim")

	-- treesitter
	use {"nvim-treesitter/nvim-treesitter",
		run = ':TSUpdate'
	}

	-- terminal
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	  end}

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
