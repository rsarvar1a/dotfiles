
local cmd = vim.cmd
local g = vim.g

cmd "set hidden"
cmd "set updatetime=300"
cmd "set shortmess+=c"

vim.api.nvim_set_keymap(
  "n",
  "<C-space>",
  "coc#refresh()",
  {
    noremap = true,
    silent = true,
    expr = true
  }
)

vim.api.nvim_command([[
function! Show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
  autocmd CursorHold * silent call CocActionAsync('highlight')
]])

vim.api.nvim_set_keymap(
"n",
"<Leader>k",
":call Show_documentation()<CR>",
{
  silent = true
});
g.syntastic_cpp_checkers = {'cpplint'}
g.syntastic_c_checkers = {'cpplint'}
g.syntastic_cpp_cpplint_exec = 'cpplint'

vim.api.nvim_set_keymap(
  "n",
  "<Leader>f",
  ":ClangFormat<CR>",
  {}
)
