return {
  'sbdchd/neoformat',
  config = function()
    vim.keymap.set('n', "<F3>", "<cmd>Neoformat<CR>", {})
  end
}
