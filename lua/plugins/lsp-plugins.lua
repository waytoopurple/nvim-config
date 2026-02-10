return {
	-- Mason installs LSP binaries
	{
		"mason-org/mason.nvim",
		config = function()
			require("lsp")
		end,
	},

	-- Bridge Mason ↔ server configs
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},

	-- Server definitions (required, but do NOT call require("lspconfig"))
	{
		"neovim/nvim-lspconfig",
	},
	{
		"jay-babu/mason-null-ls.nvim", -- optional helper
		config = function()
			require("mason").setup()
			require("mason-null-ls").setup({
				ensure_installed = {
					"prettier",
					"eslint_d",
					"stylua",
                    "shfmt",
					"ruff",
				},
				handlers = {},
				automatic_installation = true,
				virtual_text = true,
				-- no handlers table needed: automatic_setup is enabled by default
			})
		end,
	},
	{
		"ErichDonGubler/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
			vim.diagnostic.config({ virtual_text = false })
		    vim.keymap.set("", "<Leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
		end,
	},
}
