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
            ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "basedpyright"},
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.clangd.setup({})
            lspconfig.basedpyright.setup({})
        end
    },

}
