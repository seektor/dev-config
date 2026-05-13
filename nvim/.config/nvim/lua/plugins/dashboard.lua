return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("dashboard").setup({
        theme = "hyper",
        config = {
          week_header = { enable = true },
          shortcut = {
            {
              icon = "󰊳 ",
              desc = "Update",
              group = "@property",
              action = "Lazy update",
              key = "u",
            },
            {
              icon = " ",
              desc = "Find file",
              group = "Label",
              action = "Telescope find_files",
              key = "f",
            },
            {
              icon = " ",
              desc = "Sessions",
              group = "DiagnosticHint",
              action = "SessionSearch",
              key = "s",
            },
            {
              icon = " ",
              desc = "Recent files",
              group = "Number",
              action = "Telescope oldfiles",
              key = "r",
            },
          },
        },
      })
    end,
  },
}
