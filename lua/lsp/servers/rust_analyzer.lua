local handlers = require("lsp.handlers")

vim.lsp.config.rust_analyzer = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
    },
  },
}
