local config = {
	open_on_tab = false,
	hijack_cursor = false,
	update_cwd = false,
	diagnostics = {
		enable = true,
		icons = {
			error = " ",
			warning = " ",
			info = " ",
			hint = " "
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
		width = 50,
		hide_root_folder = false,
		side = 'left',
		mappings = {
			custom_only = false
		},
		number = false,
		relativenumber = false,
		signcolumn = "yes"
	},
	renderer = {
		icons = {
			webdev_colors = true,
			symlink_arrow = "  ",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = false,
				modified = true,
			},
          	glyphs = {
            default = " ",
				symlink = " ",
				bookmark = "󰆤 ",
				modified = "● ",
				folder = {
					arrow_closed = " ",
					arrow_open = " ",
					default = " ",
					open = " ",
					empty = " ",
					empty_open = " ",
					symlink = " ",
					symlink_open = " ",
				},
				git = {
					unstaged = "",
					staged = "✓",
					unmerged = "",
					renamed = "",
					untracked = "",
					deleted = "󰗨",
					ignored = "",
				}
			}
		}
	}
}

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set('n', '<C-n>', ":NvimTreeToggle<CR>")

return {
	"nvim-tree/nvim-tree.lua",
	opts = config,
	lazy = false
}
