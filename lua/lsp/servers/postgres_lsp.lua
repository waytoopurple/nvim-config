local handlers = require("lsp.handlers")

vim.lsp.config.postgres_lsp = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}
