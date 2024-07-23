
-- Includes.

require('bindings.lua')
require('settings.lua')

-- Set termguicolours.

vim.opt.termguicolors = true

-- Bootstrapping lazy.nvim.

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- lazy.nvim setup.

require("lazy").setup(
	{{ import = "plugins" }},
	{
		git = {
			url_format = "https://github.com/%s.git",
		},
	}
)

-- Post-lazy configuration.

vim.cmd "colorscheme catppuccin"
