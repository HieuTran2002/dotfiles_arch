require('lspsaga').setup({})

vim.keymap.set('n', '<leader>gd', ':Lspsaga peek_definition<CR>')
vim.keymap.set('n', '<leader>ld', ':Lspsaga diagnostic_jump_next<CR>')
vim.keymap.set('n', '<leader>Ld', ':Lspsaga show_workspace_diagnostics<CR>')
vim.keymap.set('n', '<leader>gr', ':Lspsaga rename<CR>')
-- vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)



