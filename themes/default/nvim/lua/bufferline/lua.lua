vim.o.termguicolors = true

local colours = require("palette.lua")

local def =
{
  fg  = colours.hil2,
  bg  = colours.bg3,
  alt = colours.mid3,
}
local vis =
{
  fg  = colours.hil1,
  bg  = colours.bg2,
  alt = colours.mid2,
}
local sel =
{
  fg  = colours.acc1,
  bg  = colours.bg1,
  alt = colours.mid1,
}

require "bufferline".setup {
    options = {
        offsets = {
          {filetype = "NvimTree", text = "", padding = 0},
        },
        numbers = 'ordinal',
        numbers_style = 'none',
        buffer_close_icon = "",
        modified_icon = "●",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 20,
        max_prefix_length = 10,
        tab_size = 30,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = 'thick'
    },
    highlights = {
        background = {
            guifg = def.fg,
            guibg = def.bg,
            gui   = "italic"
        },
        fill = {
            guifg = def.alt,
            guibg = def.bg,
        },
	close_button = {
	    guifg = def.fg,
	    guibg = def.bg,
            gui   = "italic"
	},
	close_button_visible = {
	    guifg = vis.fg,
	    guibg = vis.bg,
            gui   = "italic"
	},
        close_button_selected = {
            guifg = sel.fg,
            guibg = sel.bg,
            gui   = "italic"
        },
	buffer_visible = {
	    guifg = vis.fg,
	    guibg = vis.bg,
            gui   = "italic"
	},
        buffer_selected = {
            guifg = sel.fg,
            guibg = sel.bg,
            gui   = "italic"
        },
        separator_visible = {
            guifg = def.bg,
            guibg = def.bg,
        },
        separator = {
            guifg = def.bg,
            guibg = def.bg,
        },
        separator_selected = {
            guifg = def.bg,
            guibg = def.bg,
        },
        indicator_selected = {
            guifg = sel.fg,
            guibg = sel.bg,
        },
        modified_selected = {
            guifg = sel.fg,
            guibg = sel.bg,
        },
        modified_visible = {
            guifg = vis.fg,
            guibg = vis.bg,
        },
        duplicate_selected = {
            guifg = sel.alt,
            guibg = sel.bg,
            gui   = "italic",
        },
        duplicate_visible = {
            guifg = vis.alt,
            guibg = vis.bg,
            gui   = "italic",
        },
        duplicate = {
            guifg = def.alt,
            guibg = def.bg,
            gui   = "italic",
        },
        tab_close = {
            guifg = sel.fg,
            guibg = def.bg,
        }
    }
}

local opt = {silent = true}

-- tabnew and tabprev
vim.api.nvim_set_keymap("n", "<Leader>tn", [[<Cmd>BufferLineCycleNext<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>tp", [[<Cmd>BufferLineCyclePrev<CR>]], opt)

