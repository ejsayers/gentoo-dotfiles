return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    ensure_installed = {"lua", "rust", "c", "cpp"},
    highlight = { enable = true },
    indent = { enable = true },
}
