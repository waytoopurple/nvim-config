local M = {}
-- Keymaps for LSP
M.on_attach = function(_, bufnr)
	local opts = { buffer = bufnr, silent = true }

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, opts)
end

M.capabilities = require("cmp_nvim_lsp").default_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)

return M
