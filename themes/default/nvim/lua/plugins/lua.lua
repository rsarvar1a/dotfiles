
return require('packer').startup(
  function(use)

    -- Packer self-manage.
    use {'wbthomason/packer.nvim'}

    use {'Yggdroot/indentLine'}
    use {'akinsho/nvim-bufferline.lua'}
    use {'arzg/vim-colors-xcode'}
    use {'arzg/vim-rust-syntax-ext'}
    use {'ayu-theme/ayu-vim'}
    use {'baskerville/bubblegum'}
    use {'bfrg/vim-cpp-modern'}
    use {'catppuccin/nvim'}
    use {'cespare/vim-toml'}
    use {'famiu/feline.nvim'}
    use {'famiu/nvim-reload'}
    use {'folke/lsp-colors.nvim'}
    use {'franbach/miramare'}
    use {'godlygeek/tabular'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/vim-vsnip'}
    use {'junegunn/limelight.vim'}
    use {'kdav5758/TrueZen.nvim'}
    use {'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua'}
    use {'lervag/vimtex'}
    use {'lewis6991/gitsigns.nvim'}
    use {'lifepillar/vim-gruvbox8'}
    use {'liuchengxu/vista.vim'}
    use {'ludovicchabant/vim-gutentags'}
    use {'lukas-reineke/indent-blankline.nvim'}
    use {'mhinz/vim-startify'}
    use {'morhetz/gruvbox'}
    use {'neovim/nvim-lspconfig'}
    use {'norcalli/nvim-colorizer.lua'}
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-treesitter/nvim-treesitter'}
    use {'onsails/lspkind-nvim'}
    use {'peterhoeg/vim-qml'}
    use {'phanviet/vim-monokai-pro'}
    use {'pineapplegiant/spaceduck'}
    use {'plasticboy/vim-markdown'}
    use {'preservim/tagbar'}
    use {'rafi/awesome-vim-colorschemes'}
    use {'rakr/vim-one'}
    use {'rhysd/vim-clang-format'}
    use {'ryanoasis/vim-devicons'}
    use {'sidebar-nvim/sidebar.nvim'}
    -- use {'simrat39/symbols-outline.nvim'} -- disabled until #97 is merged
    use {'tlhr/anderson.vim'}
    use {'folke/trouble.nvim'}
    use {'vim-pandoc/vim-pandoc'}
    use {'vim-pandoc/vim-pandoc-syntax'}
    use {'zeis/vim-kolor'}

  end
)
