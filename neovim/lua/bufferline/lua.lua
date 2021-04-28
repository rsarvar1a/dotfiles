vim.o.termguicolors = true

-- colors for active , inactive buffer tabs 
require "bufferline".setup {
    options = {
        numbers = 'ordinal',
        numbers_style = 'none',
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
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
            guibg = "#202024",
            gui = "italic"
        },
        fill = {
            guifg = "#404040",
            guibg = "#121214"
        },
	buffer_visible = {
	    guifg = "#A071A6",
	    guibg = "#18181a",
            gui = "italic"
	},
        buffer_selected = {
            guifg = "#DC6060",
            guibg = "#18181a",
            gui = "italic"
        },
        separator_visible = {
            guifg = "#121214",
            guibg = "#18181a"
        },
        separator = {
            guifg = "#121214",
            guibg = "#202024"
        },
        separator_selected = {
            guifg = "#121214",
            guibg = "#18181a"
        },
        indicator_selected = {
            guifg = "#DC5060",
            guibg = "#18181a"
        },
        modified_selected = {
            guifg = "#DC2430",
            guibg = "#18181a"
        },
        modified_visible = {
            guifg = "#A071A6",
            guibg = "#18181a"
        },
        duplicate_selected = {
            guifg = "#707070",
            gui = "italic",
            guibg = "#18181a"
        },
        duplicate_visible = {
            guifg = "#606060",
            gui = "italic",
            guibg = "#18181a"
        },
        duplicate = {
            guifg = "#606060",
            gui = "italic",
            guibg = "#202024"
        },
        tab_close = {
            guifg = "#DC2430",
            gui = "bold",
            guibg = "#121214"
        }
    }
}

local opt = {silent = true}

-- tabnew and tabprev
vim.api.nvim_set_keymap("n", "<Leader>tn", [[<Cmd>BufferLineCycleNext<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>tp", [[<Cmd>BufferLineCyclePrev<CR>]], opt)

