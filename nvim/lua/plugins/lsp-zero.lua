local nmap = require('config.keymap').nmap

return {
    {
        'VonHeikemen/lsp-zero.nvim',
        lazy = true,
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'saadparwaiz1/cmp_luasnip'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        },
        config = function()
            local lsp = require('lsp-zero')

            lsp.preset('recommended')
            lsp.nvim_workspace()
            lsp.setup()

            nmap('<leader>fmt', ":LspZeroFormat<CR>")
        end,
        keys = {
            {'<leader>fmt'}
        }
    }
}
