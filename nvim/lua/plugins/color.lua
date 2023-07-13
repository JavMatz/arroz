return {
	{
		"Mofiqul/adwaita.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.adwaita_transparent = true
			vim.cmd("colorscheme adwaita")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			if vim.fn.has("termguicolors") then
				vim.opt.termguicolors = true
			end
			require("tokyonight").setup({
				style = "moon",
			})
			-- vim.cmd("colorscheme tokyonight ")
		end,
	},
	{
		'rockerBOO/boo-colorscheme-nvim',
		lazy = false,
		priority = 1000,
		config = function()
			if vim.fn.has("termguicolors") then
				vim.opt.termguicolors = true
			end
			-- require("boo-colorscheme").use({
			-- 	italic = true,
			-- 	theme = "radioactive_waste"
			-- })
			-- vim.cmd("colorscheme boo")
			-- vim.api.nvim_set_hl(0, 'Visual', {
			-- fg = "#ffffff",
			-- bg = "#654a96"
			-- })
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
			-- vim.cmd("colorscheme kanagawa-wave")
		end,
	},
}
