vim.cmd [[packadd indentLine]]

local g = vim.g
local cmd = vim.cmd

g.indentLine_enabled = 1
g.indentLine_setColors = 1

g.indentLine_color_term = 239
g.indentLine_color_gui = '#7f7f7f'

g.indentLine_char_list = {"▏"}
-- g.indentLine_char_list = {"▏", '┆', '┊'}
g.indentLine_concealcursor = 'inc'
g.indentLine_setConceal = 1

cmd "set shiftwidth=2"
cmd "set softtabstop=2"
cmd "set expandtab"

vim.api.nvim_set_keymap("n", "<F2>", ":set tabstop=2 <CR> :retab <CR> :set tabstop= <CR>", {noremap = true})

vim.cmd([[
autocmd InsertEnter  *.{markdown,md,json,tex} set conceallevel=0
autocmd InsertLeave  *.{markdown,md,json,tex} set conceallevel=2
]])
