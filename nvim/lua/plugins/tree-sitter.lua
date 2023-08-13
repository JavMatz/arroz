return {
	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate",
		config = function()
			require 'nvim-treesitter.configs'.setup {
				ensure_installed = { 'lua', 'bash' },
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = false,
					disable = { "gitcommit" },
					additional_vim_regex_highlighting = false
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<CR>",
						scope_incremental = "<CR>",
						node_incremental = "<TAB>",
						node_decremental = "<S-TAB>",
					}
				}
			}
		end
	}
}
