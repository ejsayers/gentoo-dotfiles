-- shorten keymap command
local map = vim.keymap.set
local builtin = require("telescope.builtin")

-- LSP keybindings

-- g actions
map("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "Goto References" })
map("n", "gI", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
map("n", "gy", vim.lsp.buf.type_definition, { desc = "Goto Type Definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
map("n", "gK", function()
	return vim.lsp.buf.signature_help()
end, { desc = "Signature Help" })

-- c actions
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })

-- Telescope keybindings
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Neotree
map("n", "<C-/>", "<Cmd>Neotree toggle current reveal_force_cwd<CR> left")
map("n", "|", "<Cmd>Neotree reveal left<CR>")
map("n", "<leader>b", "<Cmd>Neotree toggle show buffers right<CR>")
map("n", "<leader>B", "<Cmd>Neotree current reveal_force_cwd buffers right<CR>")
map("n", "<leader>s", "<Cmd>Neotree float git_status<CR>")
