return {
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
      require("auto-session").setup({
        auto_save = true,
        auto_restore = false,
        suppressed_dirs = { "~/", "~/Downloads", "/" },
        session_lens = { load_on_setup = true },
      })
    end,
    keys = {
      { "<leader>ss", "<cmd>SessionSave<cr>", desc = "Save session" },
      { "<leader>sr", "<cmd>SessionRestore<cr>", desc = "Restore session" },
      { "<leader>sx", "<cmd>SessionDelete<cr>", desc = "Delete session" },
      { "<leader>sf", "<cmd>SessionSearch<cr>", desc = "Find session" },
    },
  },
}
