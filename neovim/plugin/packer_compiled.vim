" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/rsarvaria/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/rsarvaria/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/rsarvaria/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/rsarvaria/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rsarvaria/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ale = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/ale"
  },
  ["awesome-vim-colorschemes"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/awesome-vim-colorschemes"
  },
  ["base16-vim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/base16-vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  indentLine = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  tagbar = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  vim = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim"
  },
  ["vim-cpp-modern"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-cpp-modern"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  vimtex = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vimtex"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
