local nnoremap = require('erick.keymap').nnoremap
local inoremap = require('erick.keymap').inoremap
local nmap = require('erick.keymap').nmap

-- Open file manager
nnoremap("<leader>xd", "<cmd>Ex<CR>")
-- Beter ESC
inoremap("kj", "<ESC>")

-- Spellcheck english
nmap("<leader>o", ":setlocal spell! spelllang=en_us<CR>", {})
-- Spellcheck spanish
nmap("<leader>ñ", ":setlocal spell! spelllang=es_mx<CR>", {})

