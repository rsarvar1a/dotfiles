return {
	'catppuccin/nvim',
	name = "catppuccin",
	config = function()
		require('catppuccin').setup({
			color_overrides = {
				all = {
					base = "#11111b",
					mantle = "#181825",
					crust = "#181825"
				}
			},
			custom_highlights = function(colors)
				return {
					NormalNC = { bg = colors.crust },
					WinBarNC = { fg = colors.crust, bg = colors.crust },
					VertSplit = { fg = colors.base, bg = colors.base },
				}
			end,
			integrations = {
				symbols_outline = true,
				navic = { enabled = true, custom_bg = "#181825" }
			}
		})
	end
}
