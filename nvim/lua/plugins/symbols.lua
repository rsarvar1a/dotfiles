vim.keymap.set('n', '<C-s>', ":SymbolsOutline<CR>")

vim.api.nvim_create_autocmd('BufEnter', { pattern = 'OUTLINE', command = 'set nonumber | set foldcolumn=0 | set signcolumn=no' })
vim.api.nvim_create_autocmd('BufEnter', { pattern = 'OUTLINE', command = 'set statusline=%#StatusLineNC#' })

return {
	'simrat39/symbols-outline.nvim',
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function ()
		require('symbols-outline').setup({
			width = 50,
			relative_width = false,
			position = 'right',
			symbols = {
				File = { icon = "󰈔", hl = "@text.uri" },
				Module = { icon = "󰆧", hl = "@namespace" },
				Namespace = { icon = "󰅪", hl = "@namespace" },
				Package = { icon = "󰏗", hl = "@namespace" },
				Class = { icon = "", hl = "@type" },
				Method = { icon = "ƒ", hl = "@method" },
				Property = { icon = "", hl = "@method" },
				Field = { icon = "󰆨", hl = "@field" },
				Constructor = { icon = "", hl = "@constructor" },
				Enum = { icon = "", hl = "@type" },
				Interface = { icon = "󰜰", hl = "@type" },
				Function = { icon = "", hl = "@function" },
				Variable = { icon = "", hl = "@constant" },
				Constant = { icon = "", hl = "@constant" },
				String = { icon = "", hl = "@string" },
				Number = { icon = "#", hl = "@number" },
				Boolean = { icon = "", hl = "@boolean" },
				Array = { icon = "󰅪", hl = "@constant" },
				Object = { icon = "󰘷", hl = "@type" },
				Key = { icon = "", hl = "@type" },
				Null = { icon = "NULL", hl = "@type" },
				EnumMember = { icon = "", hl = "@field" },
				Struct = { icon = "", hl = "@type" },
				Event = { icon = "", hl = "@type" },
				Operator = { icon = "+", hl = "@operator" },
				TypeParameter = { icon = "", hl = "@parameter" },
				Component = { icon = "󰅴", hl = "@function" },
				Fragment = { icon = "󰅴", hl = "@constant" },
			  },
		})
	end
}
