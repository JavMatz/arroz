-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Colorscheme 
  use 'NLKNguyen/papercolor-theme'
  -- Toggle comments
  use 'tpope/vim-commentary'
  -- lualine
  use 'nvim-lualine/lualine.nvim'
end)
