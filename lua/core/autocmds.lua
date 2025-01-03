local autocmd = vim.api.nvim_create_autocmd

-- autocmd('BufEnter', {
--     group = vim.api.nvim_create_augroup('HelpVSplit', { clear = true }),
--     callback = function()
--         if vim.bo.buftype == 'help' then 
--             -- get win number so we can keep it open
--             local original_win = vim.fn.win_getid(vim.fn.winnr('#'))
--
--             -- get help buf and win numbers to keep it open
--             local help_buf = vim.fn.bufnr()
--             local help_win = vim.api.nvim_get_current_win()
--
--
--             -- set current window to code buffer and close help buffer
--             vim.api.nvim_set_current_win(original_win)
--             vim.api.nvim_win_close(help_win, false)
--
--             -- open vsplit and set buf to help buf
--             vim.cmd('vsplit')
--             vim.api.nvim_win_set_buf(vim.api.nvim_get_current_win(), help_buf)
--         end
--     end
-- })

autocmd("BufWinEnter", {
    pattern = 'quickfix',
    callback = function ()
        vim.keymap.set('n', '<C-n>', 'j', { buffer = true })
        vim.keymap.set('n', '<C-p>', 'k', { buffer = true })
        vim.keymap.set('n', '<C-c>', '<cmd>q<CR>', { buffer = true })
    end
})
