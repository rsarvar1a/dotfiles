require('plugins.lua')

-- Pre-imports.

require('bufferline.lua')
require('compe.lua')
require('hyperfocus.lua')
require('lspconfig.lua')
require('markdown.lua')
require('nvimtree.lua')
require('signs.lua')
require('startify.lua')
require('statusline.lua')
require('tagbar.lua')
require('treesitter.lua')
require('web-devicons.lua')

-- Global config.

local cmd       = vim.cmd
local g         = vim.g

cmd "set mouse=a"
cmd "syntax enable"
cmd "syntax on"
cmd "set number"
cmd "set cmdheight=1"
cmd "set fillchars+=vert:\\|"
cmd "set autochdir"
cmd "set wildmenu"
cmd "set signcolumn=yes:2"
cmd "set guifont=VictorMonoNerdFont:h16"
cmd "set cursorline"
cmd "set breakindent"
cmd "set showbreak=->\\  "
cmd "set breakindentopt=shift:0"
cmd "set wrap"
cmd "set completeopt=menuone,noselect"
cmd "set title"
cmd "set conceallevel=0"

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

vim.api.nvim_command([[
  nnoremap <Leader>sv :vsplit<CR>
]])

vim.api.nvim_command([[
  nnoremap <Leader>sh :split<CR>
]])

vim.api.nvim_command([[
  nnoremap <Leader>t :term<CR>
]])

vim.api.nvim_command([[
  autocmd TermOpen * set nonumber | set foldcolumn=1 | set signcolumn=no
]])

vim.cmd [[ let hidden_statusline = luaeval('require("opts.lua").hidden_statusline') | autocmd BufEnter,BufWinEnter,WinEnter,CmdwinEnter,TermEnter * nested if index(hidden_statusline, &ft) >= 0 | set laststatus=0 | else | set laststatus=2 | endif ]]

-- Colorschemes.

require('colorizer').setup()
require('colours.lua')

require('indentline.lua')

