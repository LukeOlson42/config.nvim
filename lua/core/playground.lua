local set = vim.opt_local

-- Set local settings for terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", {}),
  callback = function()
    set.number = false
    set.relativenumber = false
    set.scrolloff = 0

    vim.bo.filetype = "terminal"
  end,
})

-- Open a terminal at the bottom of the screen with a fixed height.
vim.keymap.set("n", "<leader>st", function()
  vim.cmd.new()
  vim.cmd.wincmd "J"
  vim.api.nvim_win_set_height(0, 12)
  vim.wo.winfixheight = true
  vim.cmd.term()
end)

local smart_split = function()
    local ui = vim.api.nvim_list_uis()
    local ui_width = ui[1].width
    local ui_height = ui[1].height
    local ratio = 3

    if ui_height > ui_width/ratio then
        -- print("split")
        vim.cmd[[split]]        
    else
        -- print("vsplit")
        vim.cmd[[vsplit]]        
    end
end

