require("auto-save").setup({
  enabled = true, -- 起動時から自動保存を有効化
  trigger_events = {"InsertLeave", "TextChanged", "VimLeavePre"}, -- Neovim終了前にも保存
  condition = function(buf) -- 保存するかどうかの条件
    local utils = require("auto-save.utils.data")
    if vim.bo[buf].modifiable and utils.not_in(vim.bo[buf].filetype, {}) then
      return true -- 保存する
    end
    return false -- 保存しない
  end,
  write_all_buffers = false, -- 有効なバッファ全てを保存するか
  debounce_delay = 135 -- 保存の間隔(ミリ秒)
})
