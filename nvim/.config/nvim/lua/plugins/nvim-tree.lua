return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = function()
        vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#dcb67a" })
        vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderIcon", { fg = "#dcb67a" })
        vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderIcon", { fg = "#dcb67a" })
      end,
    })
    vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#dcb67a" })
    vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderIcon", { fg = "#dcb67a" })
    vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderIcon", { fg = "#dcb67a" })

    require("nvim-tree").setup({
      view = {
        width = 35,
        side = "right",
      },
      renderer = {
        group_empty = true,
        indent_markers = {
          enable = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "󰆤",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "󰉋",
              open = "󰝰",
              empty = "󰉖",
              empty_open = "󰷏",
              symlink = "󰉒",
              symlink_open = "󰉒",
            },
            git = {
              unstaged = "✎",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable = true,
      },
    })
  end,
  keys = {
    { "<leader>e",  "<cmd>NvimTreeToggle<cr>",   desc = "Toggle file explorer" },
    { "<leader>ef", "<cmd>NvimTreeFindFile<cr>", desc = "Reveal file in explorer" },
  },
}
