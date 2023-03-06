return {
    {
        'neovim/nvim-lspconfig',
        lazy = false,
        config = function()
            local nnoremap = require('config.keymap').nnoremap

            -- require('mason').setup()
            -- require('mason-lspconfig').setup()
            local lsp = require('lspconfig')

            -- local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

            nnoremap('gl', vim.diagnostic.open_float, {})
            nnoremap('[d', vim.diagnostic.goto_prev, {})
            nnoremap(']d', vim.diagnostic.goto_next, {})
            local lsp_attach = function(client, bufnr)
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

            local lsp_flags = {
                debounce_text_changes = 150
            }

            -- Bash 
            lsp.bashls.setup{
                cmd = {
                    "bash-language-server",
                    "start"
                },
                cmd_env = {
                     GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)"
                },
                filetypes = {
                    "sh"
                }
            }

            -- Lua
            lsp.lua_ls.setup{
                on_attack = lsp_attach,
                flags = lsp_flags,
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT'
                        },
                        diagnostics = {
                            globals = {'vim'}
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                        },
                        telemetry = {
                            enable = false
                        }
                    }
                }
            }

            -- Rust
            lsp.rust_analyzer.setup{
                cmd = {
                    "rust-analyzer"
                },
                filetypes = {
                    "rust"
                },
                settings = {
                    ["rust-analyzer"] = {
                        checkOnSave = {
                            command = "clippy"
                        }
                    }
                }
            }

        end,
        keys = {
            { "gl" },
            { "[d" },
            { "]d" },
            { "gD" },
            { "gd" },
            { "K" },
            { "gi" },
            { "<C-k>" },
            { "go" },
            { "<F2>" },
            { "<F4>" },
            { "gr" },
            { "<space>f" },
        }
    }
}
