return {
    -- Treesitter stuff
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        main = 'nvim-treesitter.configs',
        opts = {
            ensure_installed = { "lua", "vim", "python", "rust" }
        }
    },
}
