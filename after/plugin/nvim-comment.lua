require('nvim_comment').setup({
    comment_empty = false
})

if vim.api.nvim_buf_get_option(0, "filetype") == "comp" then
    vim.api.nvim_buf_set_option(0, "commentstring", "# %s")
end
