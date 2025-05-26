return {
    -- Which key
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',
        opts = {
            preset = 'modern',
            spec = {
                -- Proxy to window mappings
                { '<Leader>w', proxy = '<c-w>', group = 'windows' }
            }
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        }
    },

    -- me when i lie maybe perhaps probably
    -- -- Surround (better than mini.surround)
    -- {
    --     'kylechui/nvim-surround',
    --     version = '^3.0.0',
    --     event = 'VeryLazy',
    --     opts = {
    --         ['keymaps'] = {
    --             ['change'] = 'gzr',
    --             ['change_line'] = 'gZR',
    --             ['delete'] = 'gzd',
    --             ['insert'] = '<C-g>z',
    --             ['insert_line'] = '<C-g>Z',
    --             ['normal'] = 'gz',
    --             ['normal_cur'] = 'gZ',
    --             ['normal_cur_line'] = 'gZZ',
    --             ['normal_line'] = 'gzz',
    --             ['visual'] = 'gz',
    --             ['visual_line'] = 'gZ'
    --         }
    --     }
    -- },

    -- Makes cursor a little nicer
    { 'ya2s/nvim-cursorline',    version = '*' },

    -- Telescope best finder
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
            extensions = {
                file_browser = {
                    hijack_netrw = true
                }
            }
        }
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").load_extension "file_browser"
        end
    },

    -- Mini stuff
    {
        'echasnovski/mini.nvim',
        version = '*',
        config = function()
            require('mini.basics').setup()
            require('mini.comment').setup()
            require('mini.completion').setup()
            require('mini.fuzzy').setup()
            require('mini.hipatterns').setup()
            require('mini.icons').setup()
            require('mini.jump2d').setup()
            require('mini.move').setup()
            require('mini.notify').setup()
            require('mini.pairs').setup()
            require('mini.statusline').setup()
            require('mini.surround').setup()
        end
    },

    -- gitsigns
    { 'lewis6991/gitsigns.nvim', version = '*' },

    -- Easier to read
    { 'hiphish/rainbow-delimiters.nvim', version = '*'},

    {
        'IogaMaster/neocord',
        event = "VeryLazy",
        opts = {}
    }

}
