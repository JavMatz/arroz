local nnoremap = require('erick.keymap').nnoremap
local nmap = require('erick.keymap').nmap

-- Open file manager
nnoremap("<leader>xd", "<cmd>Ex<CR>")

-- Spellcheck english
nmap("<leader>o", ":setlocal spell! spelllang=en_us<CR>")
-- Spellcheck spanish
nmap("<leader>ñ", ":setlocal spell! spelllang=es_mx<CR>")

-- Telescope keymaps

local builtin = require('telescope.builtin')
nmap('ff', builtin.find_files, {})
nmap('fg', builtin.live_grep, {})
nmap('fb', builtin.buffers, {})
nmap('fh', builtin.help_tags, {})
