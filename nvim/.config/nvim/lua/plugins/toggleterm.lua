return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<C-t>]],
      direction = "float",
      float_opts = {
        border = "curved",
      },
      shade_terminals = false,
    })

    -- Send visual selection to terminal (Python REPL workflow)
    vim.keymap.set("v", "<leader>ts", function()
      require("toggleterm").send_lines_to_terminal("visual_lines", true, { args = vim.v.count })
    end, { desc = "Send selection to terminal" })

    -- Quick horizontal split terminal
    vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Terminal horizontal" })
    -- Quick vertical split terminal
    vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Terminal vertical" })
    -- Floating terminal (also bound to <C-t>)
    vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Terminal float" })

    -- Easy escape from terminal mode
    vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
  end,
}
