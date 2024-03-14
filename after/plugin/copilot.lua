--vim.keymap.set('i', '<leader>ca', 'copilot#Accept("\\<CR>")', {
--    expr = true,
--    replace_keycodes = false
--})
--vim.g.copilot_no_tab_map = true

vim.keymap.set('i', '<leader>c', '<Plug>(copilot-accept-word)')
