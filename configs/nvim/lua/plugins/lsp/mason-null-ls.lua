local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end

mason_null_ls.setup({
    ensure_installed = {
      "prettier",
      "stylua",
      "eslint_d",
    },
    automatic_installation = true,
  })