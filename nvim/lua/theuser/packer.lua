vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- theme:
    use { "catppuccin/nvim", as = "catppuccin" }
    use { 'bluz71/vim-moonfly-colors' }
    use {'nyoom-engineering/oxocarbon.nvim'}
    use "EdenEast/nightfox.nvim"



    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --- harpoon
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    --- treesitter
    use( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

    --- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    --- Mason
    use {
        {
            "williamboman/mason.nvim",
            opts = {
                ensure_installed = {
                    "clangd",
                    "pylsp",
                    "lua_lsp",
                    "codelldb",
                }
            }
        },
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }



    --- vim tmux navigator
    use {'christoomey/vim-tmux-navigator'}


    --- auto pair
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    --- statusbar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use { "lukas-reineke/indent-blankline.nvim" }

    use {"debugloop/telescope-undo.nvim"}

    use { "L3MON4D3/LuaSnip"}

    use { 'hrsh7th/nvim-cmp' }
    use { "hrsh7th/cmp-cmdline" }

    use { 'saadparwaiz1/cmp_luasnip' }

    use { 'https://gitlab.com/HiPhish/rainbow-delimiters.nvim' }
end)
