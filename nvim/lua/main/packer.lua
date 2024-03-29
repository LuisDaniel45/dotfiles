vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- colorscheme 
    use { "ellisonleao/gruvbox.nvim" }
    use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
    use ('nvim-treesitter/playground')

    -- file navigations
    use ('ThePrimeagen/harpoon')

    -- track changes 
    use ('mbbill/undotree')

    -- lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    -- auto comments
    use 'preservim/nerdcommenter'

    -- file tree
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          {'nvim-tree/nvim-web-devicons'}, -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- using packer.nvim
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- multi cursor plugin 
    use {'mg979/vim-visual-multi' }

    -- statusline 
    use 'beauwilliams/statusline.lua'

    -- debugger
     use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
     use 'mfussenegger/nvim-dap-python'
     
     -- quick movemnt 
     use "folke/flash.nvim"
    
     -- indentscope
     use 'echasnovski/mini.indentscope'
end)

