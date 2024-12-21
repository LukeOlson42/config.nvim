local remap = vim.keymap.set

-- various useful keybinds
remap("n", "U", "<C-r>")
remap("n", "<leader>out", vim.cmd.Ex)
remap("n", "<leader>j", '/')

-- The copy-paste keybind of all time 
remap({'n', 'v'}, "P", '"+p')
remap('v', "Y", '"+y')

-- Working with split windows
-- I want to see if I can map this to a function
-- where we see the size of the terminal window, 
-- and if its  <= SCREEN_WIDTH then we open a
-- horizontal split
remap("n", "<leader>sp", function()
    local ui = vim.api.nvim_list_uis()
    local ratio = 3
    if ui[1].height > ui[1].width/ratio then
        -- print("split")
        vim.cmd[[split]]        
    else
        -- print("vsplit")
        vim.cmd[[vsplit]]        
    end
end)

remap("n", "<C-l>", "<C-w>l")
remap("n", "<C-h>", "<C-w>h")
remap("n", "<C-j>", "<C-w>j")
remap("n", "<C-k>", "<C-w>k")

-- indentation fix
remap('n', "<leader>fix", "viB=")

-- get rid of those macros
remap('n', "q", "<nop>")
remap('n', "Q", "<nop>")

-- help how do i quit
remap('i', "<C-c>", "<Esc>l")
remap('i', "<C-Space>", "<Esc>l")
remap('v', "<C-c>", "<Esc>")
remap('v', "<C-Space>", "<Esc>")

-- set this one when on a unix machine
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

