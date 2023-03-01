local nmap = require('config.keymap').nmap

return {
    {
        'kdheepak/lazygit.nvim',
        lazy = true,
	    config = function()
	    	nmap('<leader>gg', ":LazyGit<CR>",{})
	    end,
        keys = {
            { '<leader>gg' }
        }
    }
}
