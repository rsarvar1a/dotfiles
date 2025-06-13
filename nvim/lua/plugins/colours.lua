 return {
 	'catppuccin/nvim',
 	name = "catppuccin",
 	config = function()
 		require('catppuccin').setup({
 			color_overrides = {
 				all = {
 					base = "#121417",
 					mantle = "#1a1c1f",
 					crust = "#222427"
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
 				navic = { enabled = true, custom_bg = "#121417" }
 			}
 		})
 	end
 }

