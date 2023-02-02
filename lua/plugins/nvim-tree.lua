local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- change color for folders in tree to yellowish (vs-code like)
vim.cmd([[ highlight NvimTreeOpenedFolderIcon guifg=#D6B682 ]])
vim.cmd([[ highlight NvimTreeClosedFolderIcon guifg=#D6B682 ]])

nvimtree.setup({
  hijack_cursor = true,
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
  view = {
    width = 40,
    side = 'right',
  },
  renderer = {
    highlight_opened_files = 'all',
    root_folder_label = function(path)
      print(path)
      return ".../" .. vim.fn.fnamemodify(path, ":t")
    end,
    indent_markers = {
      enable = true,
    },
    icons = {
      show = {
        folder_arrow = false,
      },
    },
  },
})

local keymap = vim.keymap

-- toggle file explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") 
