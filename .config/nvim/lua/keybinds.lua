-- leader
vim.api.nvim_set_var('mapleader', ',')
vim.api.nvim_set_var('maplocalleader', '\\')

-- <Leader>fを押すとTelescopeのfind_filesが起動するように設定
vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })

-- live_grepを呼び出すショートカット
vim.api.nvim_set_keymap('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })

-- buffersを呼び出すショートカット
vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })

-- help_tagsを呼び出すショートカット
vim.api.nvim_set_keymap('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>tr', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>h', '<C-w><C-h>')
vim.keymap.set('n', '<leader>j', '<C-w><C-j>')
vim.keymap.set('n', '<leader>k', '<C-w><C-k>')
vim.keymap.set('n', '<leader>l', '<C-w><C-l>')

vim.api.nvim_set_option('showmode', false)
