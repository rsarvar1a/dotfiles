
vim.g.mapleader = '\\'

-- Splits control.

vim.keymap.set('n', '<leader>sv', ':vsplit<CR>')
vim.keymap.set('n', '<leader>sh', ':split<CR>')

-- Terminal.

vim.keymap.set('n', '<leader>st', ':term<CR>')
vim.api.nvim_create_autocmd('TermOpen', { pattern = '', command = 'set nonumber | set foldcolumn=1 | set signcolumn=no' })

-- Read-only hack.

vim.keymap.set('c', "w!!", [[execute 'silent! write !sudo tee % > /dev/null' <bar> edit!]])

