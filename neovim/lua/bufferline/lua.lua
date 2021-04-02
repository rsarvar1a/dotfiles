vim.o.termguicolors = true

-- colors for active , inactive buffer tabs 
require "bufferline".setup {
    options = {
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
        separator_style = "thick"
    },
    highlights = {
        background = {
            guifg = "#A071A6",
            guibg = "#0d0d0f"
        },
        fill = {
            guifg = "#404040",
            guibg = "#0d0d0f"
        },
	buffer_visible = {
	    guifg = "#A071A6",
	    guibg = "#121214"
	},
        buffer_selected = {
            guifg = "#DC6060",
            guibg = "#18181a",
            gui = "bold"
        },
        separator_visible = {
            guifg = "#121214",
            guibg = "#121214"
        },
        separator_selected = {
            guifg = "#0d0d0f",
            guibg = "#18181a"
        },
        separator = {
            guifg = "#0d0d0f",
            guibg = "#0d0d0f"
        },
        indicator_selected = {
            guifg = "#a03040",
            guibg = "#18181a"
        },
        modified_selected = {
            guifg = "#DC2430",
            guibg = "#18181a"
        },
        modified_visible = {
            guifg = "#A071A6",
            guibg = "#121214"
        },
        duplicate_selected = {
            guifg = "#707070",
            gui = "italic",
            guibg = "#18181a"
        },
        duplicate_visible = {
            guifg = "#606060",
            gui = "italic",
            guibg = "#121214"
        },
        duplicate = {
            guifg = "#303030",
            gui = "italic",
            guibg = "#0d0d0f"
        },
        tab_close = {
            guifg = "#DC2430",
            gui = "bold",
            guibg = "#0d0d0f"
        }
    }
}

local opt = {silent = true}

-- tabnew and tabprev
vim.api.nvim_set_keymap("n", "<Leader>tn", [[<Cmd>BufferLineCycleNext<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>tp", [[<Cmd>BufferLineCyclePrev<CR>]], opt)

