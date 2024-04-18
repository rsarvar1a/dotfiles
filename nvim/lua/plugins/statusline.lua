return {
	"nvim-lualine/lualine.nvim",
	after = "SmiteshP/nvim-navic",
	config = function ()
		require("lualine").setup({
		  options = {
			component_separators = { left = '', right = '' },
    		section_separators = { left = ' ', right = ' ' },
			theme = "catppuccin",
			disabled_filetypes = { statusline = {"NvimTree", "Outline", "Trouble"}, },
			extensions = { 'nvim-tree', 'symbols-outline', 'trouble' }
		  },
		  sections = {
			lualine_a = { 'mode' },
			lualine_b = { 'branch' },
			lualine_c = { {'diff', symbols = {added = ' ', modified = '󰏬 ', removed = '󰍵 '}}},
			lualine_x = { {'filename', path = 3, shorting_target = 100}, {'filetype', icon_only = true} },
			lualine_y = { 'progress' },
			lualine_z = { 'location' },
		  },
		  inactive_sections = {
			lualine_a = { 'filename', 'filetype' },
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		  },
		  tabline = {},
		  extensions = {},
		})
	end
}
