

return require('packer').startup(
  function(use)
    -- Packer self-manage.
    use {'wbthomason/packer.nvim'}
    
    -- Trees.
    use {'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua'}
    use {'ludovicchabant/vim-gutentags'}
    use {'liuchengxu/vista.vim'}
    use {'preservim/tagbar'}

    -- Better highlights.
    use {'nvim-treesitter/nvim-treesitter'}
    
    -- Airlines.
    use {'famiu/feline.nvim'}
    use {'akinsho/nvim-bufferline.lua'}
    use {'nvim-lua/plenary.nvim'}
    use {'lewis6991/gitsigns.nvim'}

    -- Completion.
    use {'neovim/nvim-lspconfig'}
    use {'onsails/lspkind-nvim'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}
    use {'folke/lsp-colors.nvim'}
    use {'rhysd/vim-clang-format'}

    -- Languages.
    use {'bfrg/vim-cpp-modern'}
    use {'lervag/vimtex'}
    use {'cespare/vim-toml'}
    use {'arzg/vim-rust-syntax-ext'}
    use {'peterhoeg/vim-qml'}

    -- Markdown.
    use {'godlygeek/tabular'}
    use {'plasticboy/vim-markdown'}
    use {'vim-pandoc/vim-pandoc'}
    use {'vim-pandoc/vim-pandoc-syntax'}

    -- Colorizer.
    use {'norcalli/nvim-colorizer.lua'}

    -- Devicons.
    use {'ryanoasis/vim-devicons'}

    -- Indent lines.
    use {'Yggdroot/indentLine'}
    use {'lukas-reineke/indent-blankline.nvim'}

    -- Colorschemes.
    use {'morhetz/gruvbox'}
    use {'franbach/miramare'}
    use {'pineapplegiant/spaceduck'}
    use {'arzg/vim-colors-xcode'}
    use {'tlhr/anderson.vim'}
    use {'zeis/vim-kolor'}
    use {'baskerville/bubblegum'}
    use {'phanviet/vim-monokai-pro'}
    use {'ayu-theme/ayu-vim'}
    use {'lifepillar/vim-gruvbox8'}
    use {'rakr/vim-one'}
    use {'rafi/awesome-vim-colorschemes'}

    -- Startify.
    use {'mhinz/vim-startify'}
    use {'famiu/nvim-reload'}

    -- Zen mode.
    use {'kdav5758/TrueZen.nvim'}
    use {'junegunn/limelight.vim'}

  end
)
