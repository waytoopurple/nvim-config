local handlers = require("lsp.handlers")

vim.lsp.config.bashls = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}
