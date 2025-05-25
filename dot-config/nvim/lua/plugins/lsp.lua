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
        opts = {},
    },

}
