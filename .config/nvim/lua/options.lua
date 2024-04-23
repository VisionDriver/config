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
-- 置換時に画面下部に検索結果を表示
vim.api.nvim_set_option('inccommand', 'split')
-- カーソル行を強調
vim.api.nvim_win_set_option(0, 'cursorline', true)
-- 標識のためのスペースを最左列に設ける
vim.api.nvim_win_set_option(0, 'signcolumn', 'yes:1')
-- テキストの折り返しを無効化
vim.api.nvim_win_set_option(0, 'wrap', false)
-- 非表示文字の可視化
vim.api.nvim_win_set_option(0, 'list', true)

-- buffer
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
    pattern = '*',
    group = vim.api.nvim_create_augroup('buffer_set_options', {}),
    callback = function()
        -- swapfile作成を無効化
        vim.api.nvim_buf_set_option(0, 'swapfile', true)
        -- tab幅
        vim.api.nvim_buf_set_option(0, 'tabstop', 4)
        -- tabをスペースに変換
        vim.api.nvim_buf_set_option(0, 'expandtab', true)
        -- オートインデントをtabstopの値に
        vim.api.nvim_buf_set_option(0, 'shiftwidth', 0)
    end
})
