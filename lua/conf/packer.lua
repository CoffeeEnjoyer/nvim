-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        "EdenEast/nightfox.nvim",
        as = 'nightfox',
        config = function()
            vim.cmd("colorscheme carbonfox")
        end
    })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use ('github/copilot.vim')
    use({
        'mvllow/modes.nvim',
        tag = 'v0.2.0',
        config = function()
            require('modes').setup()
        end
    })
    use ("lukas-reineke/indent-blankline.nvim")
end)

