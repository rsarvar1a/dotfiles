require('plugins.lua')

-- Pre-imports.

require('web-devicons.lua')

require('statusline.lua')
require('bufferline.lua')

require('nvimtree.lua')
require('nvim-telescope.lua')
require('tagbar.lua')

require('treesitter.lua')
require('ycm.lua')

require('startify.lua')

-- Global config.

local cmd       = vim.cmd
local g         = vim.g

cmd "set mouse=a"
cmd "syntax enable"
cmd "syntax on"
cmd "set number"
cmd "set cmdheight=2"
cmd "set fillchars+=vert:│"
cmd "set autochdir"
cmd "set nowrap"
cmd "set wildmenu"
cmd "set signcolumn=yes"

g.auto_save = 1
g.mapleader = "\\"

-- Languages.

g.cpp_class_scope_highlight = 1
g.cpp_member_variable_highlight = 1
g.cpp_attributes_highlight = 1

-- Autos.

vim.api.nvim_command([[
  command! Cd call s:cd()
  autocmd BufEnter * call s:cd()
]])

vim.api.nvim_command([[
  autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif
]])

-- Colorschemes.

require('colorizer').setup()
require('colours.lua')

require('indentline.lua')


