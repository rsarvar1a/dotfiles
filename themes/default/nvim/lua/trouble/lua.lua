
require('trouble').setup { 
  position = 'bottom',
  height = 18, 
  signs = {
      error = "",
      warning = "",
      info = "",
      hint = ""
  }
}

vim.api.nvim_set_keymap(
  "n",
  "<Leader>zz",
  ":TroubleToggle<CR>",
  {
    silent = true
  }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>zw",
  ":Trouble workspace_diagnostics<CR>",
  {
    silent = true
  }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>zd",
  ":Trouble document_diagnostics<CR>",
  {
    silent = true
  }
)

vim.api.nvim_set_keymap(
  "n",
  "<Leader>zq",
  ":Trouble quickfix<CR>",
  {
    silent = true
  }
)
