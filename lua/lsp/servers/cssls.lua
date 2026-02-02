local handlers = require("lsp.handlers")

vim.lsp.config.cssls = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}
