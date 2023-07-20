local options = {
	offsets = {
		{filetype = "NvimTree", text = "NvimTree", padding = 0},
	},
	numbers = 'ordinal',
	buffer_close_icon = " ",
	modified_icon = "● ",
	left_trunc_marker = "",
	right_trunc_marker = "",
	max_name_length = 20,
	max_prefix_length = 10,
	tab_size = 25,
	enforce_regular_tabs = false,
	view = "multiwindow",
	show_buffer_close_icons = true,
	separator_style = 'slant',
}

return {
	"akinsho/bufferline.nvim",
	after = "catppuccin",
	dependencies = 'nvim-tree/nvim-web-devicons',
	lazy = false,
	config = function()
		require("bufferline").setup({
			options = options,
			highlights = require("catppuccin.groups.integrations.bufferline").get()
		})
	end
}
