return {
	"nvim-lualine/lualine.nvim",
	after = "SmiteshP/nvim-navic",
	config = function ()
		require("lualine").setup({
		  options = {
			theme = "auto",
			disabled_filetypes = {
				statusline = {"NvimTree", "Outline", "Trouble"},
			},
		  },
		  sections = {
			lualine_a = { 'mode' },
			lualine_b = { 'filename', 'branch' },
			lualine_c = { 'fileformat',
				{'diff', symbols = {added = ' ', modified = '󰏬 ', removed = '󰍵 '}}
			},
			lualine_x = {},
			lualine_y = { 'filetype', 'progress' },
			lualine_z = { 'location' },
		  },
		  inactive_sections = {
			lualine_a = { 'filename' },
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = { 'location' },
		  },
		  tabline = {},
		  extensions = {},
		})
	end
}
