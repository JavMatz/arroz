local nmap = require('erick.keymap').nmap
local builtin = require('telescope.builtin')

require('telescope').setup{
    defaults = {
        mappings = {
            i = {
              ["<C-h>"] = "which_key"
           }
        }
    }
}

-- Keymaps
nmap('<leader>ff', builtin.find_files, {})
nmap('<leader>fg', builtin.live_grep, {})
nmap('<leader>fb', builtin.buffers, {})
nmap('<leader>fh', builtin.help_tags, {})
