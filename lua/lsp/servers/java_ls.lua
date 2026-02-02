local handlers = require("lsp.handlers")

vim.lsp.config.java_ls = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
  settings = {
    java = {
      format = { enabled = true },
      completion = { favoriteStaticMembers = {} },
    },
  },
}
