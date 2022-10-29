-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use 'rockerBOO/boo-colorscheme-nvim'

    -- Toggle comments
    use 'tpope/vim-commentary'

    -- Tree Sitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag='0.1.0',
        requires = { { 'nvim-lua/plenary.nvim'} }
    }
end)
