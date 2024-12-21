local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local config = {
    ui = {
        border = "double",
        title = 'lazy.nvim',
        title_pos = 'center',
        pills = true,
    },
    change_detection = {
        notify = false,
    },
}

require("lazy").setup({ import = "plugins" }, config)

require("core/remap")
require("core/sets")
require("core/cmds")
require("core/autocmds")
