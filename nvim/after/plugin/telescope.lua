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
nmap('ff', builtin.find_files, {})
nmap('fg', builtin.live_grep, {})
nmap('fb', builtin.buffers, {})
nmap('fh', builtin.help_tags, {})
