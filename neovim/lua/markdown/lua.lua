local g = vim.g

g.vim_markdown_math = 1
g.vim_markdown_frontmatter = 1

vim.cmd [[
function! Pandoc_show()
  silent !pandoc %:t -o %:r.pdf
  if !system('pgrep -f ' . shellescape(expand('%:r') . '.pdf'))
    silent !zathura %:r.pdf &
  endif
endfunction

  autocmd BufWritePost *.md call Pandoc_show()
]]
