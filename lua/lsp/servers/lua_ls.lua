local handlers = require("lsp.handlers")

vim.lsp.config.lua_ls = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = {
        checkThirdParty = false,
      },
    },
  },
}
