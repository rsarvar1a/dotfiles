return {
	"SmiteshP/nvim-navic",
	config = function ()
		require('nvim-navic').setup({
			icons = {
				File = "󰈔 ",
				Module = "󰆧 ",
				Namespace = "󰅪 ",
				Package = "󰏗 ",
				Class = " ",
				Method = "ƒ ",
				Property = " ",
				Field = "󰆨 ",
				Constructor = " ",
				Enum = " ",
				Interface = "󰜰 ",
				Function = " ",
				Variable = " ",
				Constant = " ",
				String = " ",
				Number = "# ",
				Boolean = " ",
				Array = "󰅪 ",
				Object = "󰘷 ",
				Key = " ",
				Null = { icon = "NULL", hl = "@type" },
				EnumMember = " ",
				Struct = " ",
				Event = " ",
				Operator = "+ ",
				TypeParameter = " ",
				Component = "󰅴 ",
				Fragment = "󰅴 ",
			},
			highlight = true
		})
	end
}
