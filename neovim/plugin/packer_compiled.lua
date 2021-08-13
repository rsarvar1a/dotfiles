-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/rsarvaria/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/rsarvaria/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/rsarvaria/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/rsarvaria/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rsarvaria/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["TrueZen.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/TrueZen.nvim"
  },
  ["anderson.vim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/anderson.vim"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  bubblegum = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/bubblegum"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/feline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  miramare = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/miramare"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/nvim-compe"
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
  onehalf = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/onehalf"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/rust.vim"
  },
  spaceduck = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/spaceduck"
  },
  tabular = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["vim-clang-format"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-clang-format"
  },
  ["vim-colors-xcode"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-colors-xcode"
  },
  ["vim-cpp-modern"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-cpp-modern"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-gruvbox8"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-gruvbox8"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-gutentags"
  },
  ["vim-kolor"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-kolor"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-monokai-pro"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-monokai-pro"
  },
  ["vim-one"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-one"
  },
  ["vim-pandoc"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-pandoc"
  },
  ["vim-pandoc-syntax"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-pandoc-syntax"
  },
  ["vim-rust-syntax-ext"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-rust-syntax-ext"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-toml"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vim-toml"
  },
  vimtex = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vimtex"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/rsarvaria/.local/share/nvim/site/pack/packer/start/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
