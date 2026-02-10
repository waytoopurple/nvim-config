local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.g.sqlite_clib_path = "C:\\sqlite3\\sqlite3.dll"
end

vim.o.termguicolors = true

require("config.keymaps")
require("plugins.treesitter")

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'javascript', 'typescript', 'python', 'json' },
  callback = function() vim.treesitter.start() end,
})

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)


require("vim-options")


require("lazy").setup({
    spec = {
        {import = "plugins"}
    }
})





vim.lsp.handlers["textDocument/hover"] =
    vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })

vim.lsp.handlers["textDocument/signatureHelp"] =
    vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

