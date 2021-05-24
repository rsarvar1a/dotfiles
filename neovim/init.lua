require('plugins.lua')

-- Pre-imports.

require('web-devicons.lua')

require('statusline.lua')
require('bufferline.lua')

require('nvimtree.lua')
require('nvim-telescope.lua')
require('tagbar.lua')

require('treesitter.lua')
require('coc-nvim.lua')

require('markdown.lua')
require('hyperfocus.lua')

require('startify.lua')

-- Global config.

local cmd       = vim.cmd
local g         = vim.g

cmd "set mouse=a"
cmd "syntax enable"
cmd "syntax on"
cmd "set number"
cmd "set cmdheight=1"
cmd "set fillchars+=vert:┃"
cmd "set autochdir"
cmd "set wildmenu"
cmd "set signcolumn=yes"
cmd "set guifont=VictorMonoNerdFont:h14"
cmd "set cursorline"
cmd "set breakindent"
cmd "set showbreak=->\\ \\ "
cmd "set breakindentopt=shift:-2"
cmd "set wrap"

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
  autocmd BufEnter *.asm set conceallevel=0
]])

vim.api.nvim_command([[
  autocmd BufEnter *.wlp4 set filetype=cpp
]])

vim.api.nvim_command([[
  autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif
]])

vim.api.nvim_command([[
  autocmd FileType python let b:coc_root_patterns = ['.git', '.env']
]])

vim.api.nvim_command([[
  cnoremap w!! execute 'silent! write !sudo tee % > /dev/null' <bar> edit!
]])

-- Colorschemes.

require('colorizer').setup()
require('colours.lua')

require('indentline.lua')


