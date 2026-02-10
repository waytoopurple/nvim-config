-- 1. Setup Mason
require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"clangd",
		"jdtls",
		"ts_ls",
		"html",
		"cssls",
		"tailwindcss",
		"postgres_lsp",
		"bashls",
		"lua_ls",
		"rust_analyzer",
		"pyright",
	},
})

-- Load all server configs
local servers = {
	"clangd",
	"java_ls",
	"ts_ls",
	"html",
	"cssls",
	"tailwindcss",
	"postgres_lsp",
	"bashls",
	"lua_ls",
	"rust_analyzer",
	"pyright",
}

for _, server in ipairs(servers) do
	require("lsp.servers." .. server)
end

-- Enable all servers
vim.lsp.enable(servers)
