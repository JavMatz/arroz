local nmap = require('config.keymap').nmap

return {
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        tag = '0.1.1',
        dependencies = { { 'nvim-lua/plenary.nvim'} },
        config = function()
            require('telescope').setup{
                defaults = {
                    mappings = {
                        i = {
                          ["<C-h>"] = "which_key"
                       }
                    }
                }
            }

            local builtin = require('telescope.builtin')
            -- Keymaps
            nmap('<leader>ff', builtin.find_files, {})
            nmap('<leader>fg', builtin.live_grep, {})
            nmap('<leader>fb', builtin.buffers, {})
            nmap('<leader>fh', builtin.help_tags, {})
        end,
        keys = {
            {'<leader>ff'},
            {'<leader>fg'},
            {'<leader>fb'},
            {'<leader>fh'}
        }
    }
}
