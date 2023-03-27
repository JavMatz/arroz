return {
    {
        'neovim/nvim-lspconfig',
        lazy = true,
        config = function()
            local lsp = require('lspconfig')
            local util = require('lspconfig.util')

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

            -- Global mappings
            vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
            vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

            -- Use LspAttach autocommand to only map the following keys
            -- after the language server attaches to the current buffer
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    -- Enable competion triggered by <c-x><c-o>
                    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

                    -- Buffer local mappings
                    local opts = { buffer = ev.buf}
                    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
                    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
                    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
                    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
                    vim.keymap.set('n', '<space>wl', function()
                    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                    end, opts)
                    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
                    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
                    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
                    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
                    vim.keymap.set('n', '<space>f', function()
                    vim.lsp.buf.format { async = true }
                    end, opts)
                end
            })
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
