if vim.loader then 
    vim.loader.enable()
end
-- Leader
vim.g.mapleader = ' '

-- Tabs
vim.o.tabstop = 4 -- 4 is best i think
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true -- consistent 

-- Ui
vim.o.relativenumber = true
vim.o.termguicolors = true


-- Searching stuff
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- editorconfig is nice for setting some options easily
vim.g.editorconfig = true

-- exrc is nice to have for one-off configs 
vim.o.exrc = true
