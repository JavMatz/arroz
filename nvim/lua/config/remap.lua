local nnoremap = require('config.keymap').nnoremap
local inoremap = require('config.keymap').inoremap
local nmap = require('config.keymap').nmap

-- Open file manager
-- nnoremap("<leader>dd", "<cmd>Lexplore %p:h<CR>")
nnoremap("<leader>da", "<cmd>Explore<CR>")
-- Beter ESC
inoremap("kj", "<ESC>")

-- Spellcheck english
nmap("<leader>o", ":setlocal spell! spelllang=en_us<CR>", {})
-- Spellcheck spanish
nmap("<leader>ñ", ":setlocal spell! spelllang=es_mx<CR>", {})
