vim.api.nvim_set_keymap(
    "n",
    "<C-b>",
    ":TagbarToggle<CR>",
    {
        noremap = true,
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n",
    "<C-f>",
    ":Vista finder!",
    {
      noremap = true,
      silent = true
    }
)

vim.g.vista_sidebar_width = 40
