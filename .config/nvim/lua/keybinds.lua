-- leader
vim.api.nvim_set_var('mapleader', '`')
vim.api.nvim_set_var('maplocalleader', '\\')

vim.keymap.set('n', ':', ';')
vim.keymap.set('n', ';', ':')

-- <Leader>fを押すとTelescopeのfind_filesが起動するように設定
vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })

-- live_grepを呼び出すショートカット
vim.api.nvim_set_keymap('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })

-- buffersを呼び出すショートカット
vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })

-- help_tagsを呼び出すショートカット
vim.api.nvim_set_keymap('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>tr', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'x', '"_X', { noremap = true })
vim.api.nvim_set_keymap('n', 'X', '"_x', { noremap = true })
vim.api.nvim_set_keymap('n', 'd', '"_d', { noremap = true })
vim.api.nvim_set_keymap('x', 'd', '"_d', { noremap = true })
vim.api.nvim_set_keymap('x', 'p', '"_dP', { noremap = true })
vim.api.nvim_set_keymap('v', 'y', 'ygv', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-p>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-n>', '<Down>', { noremap = true })

vim.keymap.set('n', '<leader>h', '<C-w><C-h>')
vim.keymap.set('n', '<leader>j', '<C-w><C-j>')
vim.keymap.set('n', '<leader>k', '<C-w><C-k>')
vim.keymap.set('n', '<leader>l', '<C-w><C-l>')
vim.keymap.set('n', '<leader>q', '<C-w>c')

vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>')

vim.api.nvim_set_option('showmode', false)
