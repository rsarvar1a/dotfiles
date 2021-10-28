vim.cmd [[packadd vim-startify]]

local g = vim.g

g.startify_session_dir = '~/.config/nvim/session'

g.startify_bookmarks = {
  '~/.config/nvim/init.lua',
  '~/.zshrc',
}

g.startify_files_number = 15

g.startify_session_autoload = 1

g.startify_fortune_use_unicode = 1

g.startify_session_savecmds = {
  "NvimTreeClose"
}
