return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function ()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "cmake", "cpp", "latex", "lua", "racket", "vim", "vimdoc", "query", "python", "rust" }
			})
		end
	},
	{
		"nvim-treesitter/playground"
	}
}
