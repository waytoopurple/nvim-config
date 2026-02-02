local handlers = require("lsp.handlers")

vim.lsp.config.sqls = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}
