return {
	"nvim-lualine/lualine.nvim",
	optional = true,
	event = "VeryLazy",
	opts = function(_, opts)
		local colors = {
			[""] = LazyVim.ui.fg("Special"),
			["Normal"] = LazyVim.ui.fg("Special"),
			["Warning"] = LazyVim.ui.fg("DiagnosticError"),
			["InProgress"] = LazyVim.ui.fg("DiagnosticWarn"),
		}
		table.insert(opts.sections.lualine_x, 2, {
			function()
				local icon = LazyVim.config.icons.kinds.Copilot
				local status = require("copilot.api").status.data
				return icon .. (status.message or "")
			end,
			cond = function()
				if not package.loaded["copilot"] then
					return
				end
				local ok, clients = pcall(LazyVim.lsp.get_clients, { name = "copilot", bufnr = 0 })
				if not ok then
					return false
				end
				return ok and #clients > 0
			end,
			color = function()
				if not package.loaded["copilot"] then
					return
				end
				local status = require("copilot.api").status.data
				return colors[status.status] or colors[""]
			end,
		})
	end,
}
