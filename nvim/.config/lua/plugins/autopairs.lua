local autopairs_status, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_status then
  return
end

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

local cmp_autopairs_status, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_status then
  return
end

local cmp_setup, cmp = pcall(require, "cmp")
if not cmp_setup then
  return
end

-- make autopairs and completion work together
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())