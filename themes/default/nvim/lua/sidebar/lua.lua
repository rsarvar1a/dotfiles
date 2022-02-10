
-- TREE

local WIDTH = 50

vim.o.termguicolors = true
vim.cmd "hi NvimTreeFolderIcon guibg=#121214"
vim.cmd "hi NvimTreeFolderName guifg=#6E8CCB"

vim.g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 0
vim.g.nvim_tree_highlight_opened_files = 0
vim.g.nvim_tree_root_folder_modifier = table.concat {":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??"}
vim.g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names

vim.cmd [[
let g:.nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1, 'CMakeLists.txt': 1, 'Cargo.toml': 1, 'package.json': 1 }
]]

vim.g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        unstaged = " ✗",
        staged = " ✓",
        unmerged = " ",
        renamed = " ➜",
        untracked = " ★",
        deleted = " ",
        ignored = " ◌"
    },
    folder = {
        -- disable indent_markers option to get arrows working or if you want both arrows and indent then just add the arrow icons in front            ofthe default and opened folders below!
        -- arrow_open = "",
        -- arrow_closed = "",
        default = "",
        open = "",
        empty = "", -- 
        empty_open = "",
        symlink = "",
        symlink_open = ""
    },
    lsp = {
      error = "",
      warning = "",
      info = "",
      hint = ""
    }
}

-- Mappings for nvimtree

require('nvim-tree').setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {"dashboard", "startify"},
  auto_close = false,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = false,
  update_to_buf_dir = {
    enable = true,
    auto_open = true
  },
  diagnostics = {
    enable = true,
    icons = {
      error = "",
      warning = "",
      info = "",
      hint = ""
    }
  },
  filters = {
    dotfiles = false,
    custom = {".git", "node_modules", ".cache"}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500
  },
  view = {
    width = WIDTH,
    height = 40,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  }
}

-- SIDEBAR

require('sidebar-nvim').setup {
  side = "left",
  initial_width = WIDTH,
  hide_statusline = false,
  sections = {'datetime', 'git', 'diagnostics' }
}

-- SYMBOLS 

vim.g.symbols_outline = {
  relative_width = false,
  width = WIDTH
}

vim.g.tagbar_width = WIDTH

vim.g.vista_icon_indent = {"╰─▸ ", "├─▸ "}
vim.g.vista_sidebar_width = WIDTH
vim.g.vista_default_executive = 'nvim_lsp'
vim.g.vista_sidebar_position = 'vertical topleft'

-- KEYMAPS 

vim.api.nvim_set_keymap(
    "n",
    "<C-n>",
    ":Vista!<CR>:SidebarNvimClose<CR>:NvimTreeOpen<CR>",
    {
        noremap = true,
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n",
    "<C-s>",
    ":Vista!<CR>:NvimTreeClose<CR>:SidebarNvimOpen<CR>",
    {
        noremap = true,
        silent = true
    }
)

vim.api.nvim_set_keymap(
    "n",
    "<C-b>",
    ":SidebarNvimClose<CR>:NvimTreeClose<CR>:Vista nvim_lsp<CR>",
    {
      noremap = true,
      silent = true
    }
)

vim.api.nvim_set_keymap(
    "n",
    "<C-x>",
    ":SidebarNvimClose<CR>:NvimTreeClose<CR>:Vista!<CR>", 
    {
      noremap = true, 
      silent = true
    }
)
