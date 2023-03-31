return {
    {
        "junegunn/fzf.vim",
        config=function()
            local pathToBuiltinPlugin = "/usr/share/vim/vimfiles/plugin/fzf.vim"
            local builtinPlugin = io.open(pathToBuiltinPlugin, "r")
            if builtinPlugin ~= nil
                then
                    io.close(builtinPlugin)
                    vim.cmd(":so "..pathToBuiltinPlugin)
                else
                    print("Could not load local fzf plugin. Try installing the fzf package or the plugin")
                end
        end
    },
}
