 return {
 	'catppuccin/nvim',
 	name = "catppuccin",
 	config = function()
 		require('catppuccin').setup({
 			color_overrides = {
 				all = {
 					base = "#121214",
 					mantle = "#141416",
 					crust = "#161618"
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

