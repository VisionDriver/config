-- 24ビットRGBカラー有効化
vim.api.nvim_set_option('termguicolors', true)

-- グローバルオプション
vim.api.nvim_win_set_option(0, 'number', true)
vim.api.nvim_set_option('mouse', 'a')
vim.api.nvim_set_option('shiftwidth', 4)
vim.api.nvim_set_option('tabstop', 4)
vim.api.nvim_set_option('expandtab', true)
vim.api.nvim_set_option('textwidth', 0)
vim.api.nvim_set_option('hlsearch', true)
vim.api.nvim_set_option('clipboard', 'unnamedplus')

-- キーマッピング
vim.api.nvim_set_keymap('n', 'x', '"_x', {noremap = true})
vim.api.nvim_set_keymap('n', 'X', '"_X', {noremap = true})
vim.api.nvim_set_keymap('n', 'd', '"_d', {noremap = true})
vim.api.nvim_set_keymap('x', 'd', '"_d', {noremap = true})
vim.api.nvim_set_keymap('x', 'p', '"_dP', {noremap = true})
vim.api.nvim_set_keymap('v', 'y', 'ygv', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-p>', '<Up>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-n>', '<Down>', {noremap = true})
