local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
vim.keymap.set('n', '<leader>tg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ts', builtin.live_grep, {})
vim.keymap.set('n', '<leader>th', builtin.help_tags, {})
vim.keymap.set('n', '<leader>lvd', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>lve', function() require('telescope.builtin').diagnostics({ severity_bound = 0 }) end, {})
