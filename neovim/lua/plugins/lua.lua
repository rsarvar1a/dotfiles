local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

return require('packer').startup(
  function()
    -- Packer self-manage.
    use {'wbthomason/packer.nvim'}
    
    -- Trees.
    use {'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua'}
    use {'preservim/tagbar'}

    -- Telescope.
    use {'nvim-telescope/telescope.nvim'}
    use {'nvim-telescope/telescope-media-files.nvim'}
    use {'nvim-lua/popup.nvim'}

    -- Better highlights.
    use {'nvim-treesitter/nvim-treesitter'}
    
    -- Airlines.
    use {'glepnir/galaxyline.nvim'}
    use {'akinsho/nvim-bufferline.lua'}

    -- Completion.
    use {'ycm-core/YouCompleteMe'}

    -- Languages.
    use {'bfrg/vim-cpp-modern'}
    use {'lervag/vimtex'}

    -- Colorizer.
    use {'norcalli/nvim-colorizer.lua'}

    -- Devicons.
    use {'ryanoasis/vim-devicons'}

    -- Indent lines.
    use {'Yggdroot/indentLine'}

    -- Colorschemes.
    use {'rainglow/vim'}
    use {'chriskempson/base16-vim'}
    use {'rafi/awesome-vim-colorschemes'}
    use {'morhetz/gruvbox'}

    -- Plenary.
    use {'nvim-lua/plenary.nvim'}

    -- Startify.
    use {'mhinz/vim-startify'}

  end
)
