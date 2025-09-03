return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                rust = { "rustfmt", lsp_format = "fallback" },
                python = { "isort", "black" },

            },
        },
    },
}
