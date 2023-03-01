local nnoremap = require('config.keymap').nnoremap

return {
    {
        'neovim/nvim-lspconfig',
        lazy = true,
        config = function()
            nnoremap('gl', vim.diagnostic.open_float, {})
            nnoremap('[d', vim.diagnostic.goto_prev, {})
            nnoremap(']d', vim.diagnostic.goto_next, {})
            -- nnoremap('gD', vim.diagnostic.open_float, {})

            local on_attach = function(client , bufnr)

                -- Enable completition trigerred by C-x C-o
                vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

                -- Mappings
                nnoremap('gD', vim.lsp.buf.declaration, {})
                nnoremap('gd', vim.lsp.buf.definition, {})
                nnoremap('K', vim.lsp.buf.hover, {}) 
                nnoremap('gi', vim.lsp.buf.implementation, {})
                nnoremap('<C-k>', vim.lsp.buf.signature_help, {})
                -- nnoremap('<space>wa', vim.lsp.buf.add_workspace_folder, {})
                -- nnoremap('<space>wr', vim.lsp.buf.remove_workspace_folder, {})
                -- nnoremap('<space>wl', function()
                --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                -- end, {})
                nnoremap('go', vim.lsp.buf.type_definition, {})
                nnoremap('<F2>', vim.lsp.buf.rename, {})
                nnoremap('<F4>', vim.lsp.buf.code_action, {})
                nnoremap('gr', vim.lsp.buf.references, {})
                nnoremap('<space>f', function() vim.lsp.buf.format { async = true } end, {})
            end

            local lspconfig = require("lspconfig")

            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    lspconfig[server_name].setup({
                        on_attach = on_attach
                    })
                end
            })
        end,
        keys = {
            {"gl"},
            {"[d"},
            {"]d"},
            {"gD"},
            {"gd"},
            {"K"},
            {"gi"},
            {"<C-k>"},
            {"go"},
            {"<F2>"},
            {"<F4>"},
            {"gr"},
            {"<space>f"},
        }
    }
}
