local handlers = require("lsp.handlers")

vim.lsp.config.ts_ls = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
  settings = {
    -- optional: add TypeScript-specific options here
  },
}
