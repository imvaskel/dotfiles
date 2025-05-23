local set = vim.keymap.set

local opts = {
    noremap = true,
    silent = true,
}

-- SECTION: All
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})

-- SECTION: Insert Mode
set('i', 'jk', '<Esc>', opts)

-- Section: Normal Mode

-- Clipboard stuffs
set({ 'n', 'v' }, '<Leader>p', '"+p', opts)
set({ 'n', 'v' }, '<Leader>y', '"+y', opts)

-- Make it so x doesn't copy to a register (there's 0 point)
set({ 'n', 'v' }, 'x', '"_x', opts)

-- Tab bindings
set('n', '<Leader>to', '<cmd>tabnew<CR>', opts)
set('n', '<Leader>tc', '<cmd>tabclose<CR>', opts)
set('n', '<Leader>tn', '<cmd>tabnext<CR>', opts)
set('n', '<Leader>tp', '<cmd>tabprev<CR>', opts)
set('n', '<Tab>', '<cmd>tabnext<CR>', opts)
set('n', '<S-Tab>', '<cmd>tabprev<CR>', opts)

-- LSP stuffs
set('n', '<Leader>lh', vim.lsp.buf.hover, opts)
-- This can be used for both, by default it'll use the visual selection (if applicable)
set({ 'n', 'v' }, '<Leader>lf', vim.lsp.buf.format, opts)

-- Telescope stuffs
local builtin = require('telescope.builtin')
set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
set("n", "<leader>fp", ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
    { desc = "Telescope file browser" }
)

-- SECTION: Visual Mode

set('v', '<Leader>w', '<C-w>', { desc = "Enter window mode" })

-- Identation stuff, this keeps the selection
set('v', '<', '<gv')
set('v', '>', '>gv')

-- Little cursed, but this sets our selection one line down
set('v', 'J', [[:m '>+1<CR>gv=gv']])
set('v', 'K', [[:m '<-1<CR>gv=gv']])


-- SECTION: Terminal Mode
set('t', '<ESC>', '<C-\\><C-n>', opts)
set('t', 'jk', '<C-\\><C-n>', opts)
