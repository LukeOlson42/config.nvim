local set = vim.opt

-- line numbers on, no relative numbers
set.nu = true
set.relativenumber = false

-- tabs are 4 spaces, expand to spaces to appease the python gods
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

-- Don't let the cursor get to the bottom of the screen
set.scrolloff = 8
set.cursorline = true

-- Don't highlight all of the time, search incrementally,
-- and have fun smart search (only be case sensitive if
-- upper case are used)
set.hlsearch = false
set.incsearch = true
set.ignorecase = true
set.smartcase = true

-- using lualine, dont need the mode or selection count anyways
set.showmode = false
set.showcmd = false

-- Miscellaneous
set.lazyredraw = true
set.linebreak = true

set.splitright = true
set.splitbelow = true

set.swapfile = false
set.inccommand = "split"


-- I like having the current line highlighted
-- with a nice gold color :)
-- vim.api.nvim_set_hl(0, 'CursorLineNr', {
--     --    fg = '#cfb53b',  -- this is my attempt at making a nice gold
--         fg = '#E7C664',  -- this is the actual sonokai yellow
--     -- fg = '#fadb2f',     -- gruvbox bright yellow
--     bold = true,
--     italic = true,
-- })
set.termguicolors = true

vim.diagnostic.config({
    signs = false,
    update_in_insert = false,
    virtual_text = {},
})

