return {
    -- Lsp configurations
    { 'mason-org/mason.nvim', opts = {} },
    {
        'mason-org/mason-lspconfig.nvim',
        dependencies = {
            'mason-org/mason.nvim',
            'neovim/nvim-lspconfig',
        },
        opts = {
            ensure_installed = { 'lua_ls', },
        },
    },

    -- Formatting
    {
        'stevearc/conform.nvim',
        opts = {
            formatters_by_ft = {
                python = {
                    -- To fix auto-fixable lint errors.
                    "ruff_fix",
                    -- To run the Ruff formatter.
                    "ruff_format",
                    -- To organize the imports.
                    "ruff_organize_imports",
                },
            },
        },
    },

}
