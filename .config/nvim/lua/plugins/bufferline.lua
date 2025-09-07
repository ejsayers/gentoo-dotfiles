return {
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				diagnostics = "nvim_lsp",
				always_show_bufferline = true,
				offsets = {
					{
						filetype = "neo-tree",
						text = "Neo Tree",
						highlight = "Directory",
						text_align = "left",
					},
				},
			},
		},
	},
}
