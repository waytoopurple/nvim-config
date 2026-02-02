local handlers = require("lsp.handlers")

vim.lsp.config.html = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
  settings = { html = { format = { enable = true } } },
}
