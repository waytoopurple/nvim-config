local handlers = require("lsp.handlers")

vim.lsp.config.pyright = {
	on_attach = handlers.on_attach,
	capabilities = handlers.capabilities,
	settings = {
		python = {
			analysis = {
				diagnosticMode = "workspace",
				typeCheckingMode = "basic",
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
				},
			},
		},
	},
}
