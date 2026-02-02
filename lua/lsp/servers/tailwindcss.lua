local handlers = require("lsp.handlers")

vim.lsp.config.tailwindcss = {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
  settings = {
    tailwindCSS = {
      classAttributes = { "class", "className", "class:list", "classList", "ngClass" },
      includeLanguages = { html = "html", javascript = "javascript", typescript = "typescript", vue = "vue" },
      validate = true,
    },
  },
}
