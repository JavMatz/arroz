return {
    {
        'neovim/nvim-lspconfig',
        lazy = true,
        config = function()
            local nnoremap = require('config.keymap').nnoremap
            local util = require("lspconfig/util")
            local lsp = require('lspconfig')

            local opts = { noremap = true, silent = true}
            nnoremap('gl', vim.diagnostic.open_float, opts)
            nnoremap('[d', vim.diagnostic.goto_prev, opts)
            nnoremap(']d', vim.diagnostic.goto_next, opts)
            local lsp_attach = function(client, bufnr)
                -- Enable completition trigerred by C-x C-o
                vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

                local bufopts = { noremap = true, silent = true, buffer = bufnr}
                -- Mappings
                nnoremap('gD', vim.lsp.buf.declaration, bufopts)
                nnoremap('gd', vim.lsp.buf.definition, bufopts)
                nnoremap('K', vim.lsp.buf.hover, bufopts)
                nnoremap('gi', vim.lsp.buf.implementation, bufopts)
                nnoremap('<C-k>', vim.lsp.buf.signature_help, bufopts)
                -- nnoremap('<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
                -- nnoremap('<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
                -- nnoremap('<space>wl', function()
                --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                -- end, bufopts)
                nnoremap('go', vim.lsp.buf.type_definition, bufopts)
                nnoremap('<F2>', vim.lsp.buf.rename, bufopts)
                nnoremap('<F4>', vim.lsp.buf.code_action, bufopts)
                nnoremap('gr', vim.lsp.buf.references, bufopts)
                nnoremap('<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
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
                -- root_dir = {
                --     util.find_git_ancestor
                -- },
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
                root_dir = util.root_pattern("Cargo.toml", "rust-project.json"),
                settings = {
                    ["rust-analyzer"] = {
                        checkOnSave = {
                            command = "clippy"
                        }
                    }
                }
            }

            -- Javascript
            lsp.tsserver.setup{
            }

            -- HTML
            lsp.html.setup{
            }

            -- CSS
            lsp.cssls.setup{
            }
        end,
        event = {
            'BufEnter *.lua',
            'BufEnter *.rs',
            'BufEnter *.js',
            'BufEnter *.jsx',
            'BufEnter *.html',
            'BufEnter *.css',
            'BufEnter *.scss',
        },
        ft = {
            "rust",
            "lua",
            "sh",
            "javascript",
            "javascriptreact",
            "javascript.txs",
            "html",
            "css",
            "scss",
            "less",
        },
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
