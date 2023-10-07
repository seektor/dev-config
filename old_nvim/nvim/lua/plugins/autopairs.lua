local autopairs = require("nvim-autopairs")

autopairs.setup({
-- enable treesitter
  check_ts = true,
  ts_config = {
    -- don't add pairs in lua string treesitter nodes
    lua = { "string" },
    -- don't add pairs in javscript template_string treesitter nodes
    javascript = { "template_string" }, 
  },
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")

-- make autopairs and completion work together
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())