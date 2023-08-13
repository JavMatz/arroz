return {
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
			vim.cmd("colorscheme kanagawa-wave")
		end,
	},
}
