local opt = vim.opt

-- Set options
vim.o.number = true
vim.o.mouse = 'a'
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.textwidth = 0
vim.o.hlsearch = true
vim.o.clipboard = 'unnamedplus'

-- Key mappings
vim.api.nvim_set_keymap('n', 'x', '"_x', {noremap = true})
vim.api.nvim_set_keymap('n', 'X', '"_X', {noremap = true})
vim.api.nvim_set_keymap('n', 'd', '"_d', {noremap = true})
vim.api.nvim_set_keymap('x', 'd', '"_d', {noremap = true})
vim.api.nvim_set_keymap('x', 'p', '"_dP', {noremap = true})
vim.api.nvim_set_keymap('v', 'y', 'ygv', {noremap = true})

-- Insert mode mappings
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', {noremap = true})

-- Enable syntax highlighting
vim.cmd('syntax on')
