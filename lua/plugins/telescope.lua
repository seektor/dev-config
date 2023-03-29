local telescope_status, telescope = pcall(require, "telescope")
if not telescope_status then
  return
end

local actions_status, actions = pcall(require, "telescope.actions")
if not actions_status then
  return
end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next, -- move to next result
      },
    },
    file_ignore_patterns = { 
      "node_modules" 
    }
  },
})

telescope.load_extension("fzf")

local keymap = vim.keymap

-- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
-- find string in current working directory as you type
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
-- find string under cursor in current working directory
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
-- list open buffers in current neovim instance
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
-- list available help tags
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

