return {
  "christoomey/vim-tmux-navigator",
  cmd = { "TmuxNavigateLeft", "TmuxNavigateDown", "TmuxNavigateUp", "TmuxNavigateRight" },
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<cr>",  mode = { "n", "v" } },
    { "<C-j>", "<cmd>TmuxNavigateDown<cr>",  mode = { "n", "v" } },
    { "<C-k>", "<cmd>TmuxNavigateUp<cr>",    mode = { "n", "v" } },
    { "<C-l>", "<cmd>TmuxNavigateRight<cr>", mode = { "n", "v" } },
  },
}
