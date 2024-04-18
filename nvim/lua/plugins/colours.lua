 return {
 	'catppuccin/nvim',
 	name = "catppuccin",
 	config = function()
 		require('catppuccin').setup({
 			color_overrides = {
 				all = {
 					base = "#07070f",
 					mantle = "#080810",
 					crust = "#090911"
 				}
 			},
 			custom_highlights = function(colors)
 				return {
 					NormalNC = { bg = colors.crust },
 					WinBarNC = { fg = colors.crust, bg = colors.crust },
 					VertSplit = { fg = colors.crust, bg = colors.crust },
 				}
 			end,
 			integrations = {
 				symbols_outline = true,
				treesitter = true,
 				navic = { enabled = true, custom_bg = "#11111b" }
 			}
 		})
 	end
 }

