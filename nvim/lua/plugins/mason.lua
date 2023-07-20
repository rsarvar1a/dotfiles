return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function ()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓ ",
						package_pending = " ",
						package_uninstalled = " "
					}
				}
			})
		end,
		lazy = false
	},
	{
		"williamboman/mason-lspconfig",
		config = function ()
			require ('mason-lspconfig').setup()
		end
	}
}
