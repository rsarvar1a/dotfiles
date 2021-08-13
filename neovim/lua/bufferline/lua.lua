vim.o.termguicolors = true

-- colors for active , inactive buffer tabs
require "bufferline".setup {
    options = {
        offsets = {
          {filetype = "NvimTree", text = "", padding = 1},
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
            guifg = "#A071A6",
            guibg = "#0d0d0f",
            gui = "italic"
        },
        fill = {
            guifg = "#404040",
            guibg = "#0d0d0f"
        },
	close_button = {
	    guifg = "#A071A6",
	    guibg = "#0d0d0f",
            gui = "italic"
	},
	close_button_visible = {
	    guifg = "#A071A6",
	    guibg = "#101012",
            gui = "italic"
	},
        close_button_selected = {
            guifg = "#DC6060",
            guibg = "#151517",
            gui = "italic"
        },
	buffer_visible = {
	    guifg = "#A071A6",
	    guibg = "#101012",
            gui = "italic"
	},
        buffer_selected = {
            guifg = "#DC6060",
            guibg = "#151517",
            gui = "italic"
        },
        separator_visible = {
            guifg = "#151517",
            guibg = "#101012"
        },
        separator = {
            guifg = "#151517",
            guibg = "#0d0d0f"
        },
        separator_selected = {
            guifg = "#151517",
            guibg = "#101012"
        },
        indicator_selected = {
            guifg = "#DC5060",
            guibg = "#101012"
        },
        modified_selected = {
            guifg = "#DC2430",
            guibg = "#101012"
        },
        modified_visible = {
            guifg = "#A071A6",
            guibg = "#101012"
        },
        duplicate_selected = {
            guifg = "#707070",
            gui = "italic",
            guibg = "#101012"
        },
        duplicate_visible = {
            guifg = "#606060",
            gui = "italic",
            guibg = "#101012"
        },
        duplicate = {
            guifg = "#606060",
            gui = "italic",
            guibg = "#0d0d0f"
        },
        tab_close = {
            guifg = "#Dc5060",
            guibg = "#0d0d0f"
        }
    }
}

local opt = {silent = true}

-- tabnew and tabprev
vim.api.nvim_set_keymap("n", "<Leader>tn", [[<Cmd>BufferLineCycleNext<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>tp", [[<Cmd>BufferLineCyclePrev<CR>]], opt)

