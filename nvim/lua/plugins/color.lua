return {
	{
		'rose-pine/neovim',
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},
	{
		'rebelot/kanagawa.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			if vim.fn.has("termguicolors") then
				vim.opt.termguicolors = true
			end
			require("kanagawa").setup({
				dimInactive = true,
			})
			-- vim.cmd("colorscheme kanagawa-dragon")
		end,
	},
}
