return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = true,
        build = function()
            require('nvim-treesitter.install').update({ with_sync = true })
        end,
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = {'lua','javascript', 'html', 'css', 'rust', 'python', 'bash'},
                sync_install = true,
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = '<CR>',
                        scope_incremental = '<CR>',
                        node_incremental = '<TAB>',
                        node_decremental = '<S-TAB>',
                    }
                }
            }
        end,
        keys = {
            {'<CR>'},
            {'<TAB>'},
            {'<S-TAB>'}
        }
    }
}
