local g = vim.g

local true_zen = require("true-zen")

true_zen.setup({
  ataraxis = {
    just_do_it_for_me = true,
    left_padding = 10,
    right_padding = 10,
    top_padding = 1,
    bottom_padding = 1
  },
  true_false_commands = false,
  cursor_by_mode = false,
  before_minimalist_mode_shown = true,
  before_minimalist_mode_hidden = true,
  after_minimalist_mode_shown = true,
  after_minimalist_mode_hidden = true,
  unknown_bkg_color_fix = false,
  bottom = {
    hidden_laststatus = 0,
    hidden_ruler = false,
    hidden_showmode = false,
    hidden_showcmd = false,
    hidden_cmdheight = 1,

    shown_laststatus = 2,
    shown_ruler = true,
    shown_showmode = false,
    shown_showcmd = false,
    shown_cmdheight = 1
  },
  top = {
    hidden_showtabline = 0,

    shown_showtabline = 0
  },
  left = {
    hidden_number = false,
    hidden_relativenumber = false,
    hidden_signcolumn = "yes",

    shown_number = false,
    shown_relativenumber = false,
    shown_signcolumn = "yes"
  },
  integrations = {
    integration_galaxyline = true,
    integration_vim_airline = false,
    integration_vim_powerline = false,
    integration_tmux = false,
    integration_express_line = false,
    integration_gitgutter = false,
    integration_vim_signify = false,
  }
})

vim.api.nvim_set_keymap(
  "n",
  "<Leader>hm",
  ":TZMinimalist<CR>",
  {
    silent = true
  }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>ha",
  ":TZAtaraxis<CR>",
  {
    silent = true
  }
)

vim.cmd([[
  let g:isLimelight=0
  function! ToggleLimelight()
    if (g:isLimelight == 1)
      let g:isLimelight=0
      Limelight!
    else
      let g:isLimelight=1
      Limelight
    endif
  endfunction
]])

vim.api.nvim_set_keymap(
  "n",
  "<Leader>l",
  ":call ToggleLimelight()<CR>",
  {
    silent = true
  }
)
