local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.solargraph.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  cmd = {
    "./rubyls.sh"
  },
  root_dir = require'lspconfig/util'.root_pattern(".git", vim.fn.getcwd()),
}
