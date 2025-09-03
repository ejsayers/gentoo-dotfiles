return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		opts = {
			PATH = "append",
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "basedpyright" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		config = function()
			local lspconfig = require("lspconfig")
			--	lspconfig.lua_ls.setup({})
			-- lspconfig.rust_analyzer.setup({})
			lspconfig.clangd.setup({})
			lspconfig.basedpyright.setup({})
			vim.diagnostic.config({
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = " ",
						[vim.diagnostic.severity.WARN] = " ",
						[vim.diagnostic.severity.HINT] = "󰠠 ",
						[vim.diagnostic.severity.INFO] = " ",
					},
				},
				virtual_text = true,
			})
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
						codeLens = {
							enable = true,
						},
						hint = {
							enable = true,
						},
					},
				},
			})
		end,
	},
}
