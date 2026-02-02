local handlers = require("lsp.handlers")

vim.lsp.config.clangd = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}
