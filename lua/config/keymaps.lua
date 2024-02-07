-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- map("n", "<leader>mCU", '<cmd>lua require("crates").upgrade_all_crates()<CR>', { desc = "Upgrade all crates" })
-- map("n", "f", "<cmd>HopWordMW<cr>", { desc = "Hop word" })
-- map("n", "F", "<cmd>HopAnywhere<cr>", { desc = "Hop anywhere" })
--
-- remove default keymaps so text wrapping command works
-- vim.keymap.del("n", "gw")
-- vim.keymap.del("x", "gw")

-- floating terminal
-- local lazyterm = function()
--   Util.terminal.open(nil, { cwd = Util.get_root() })
-- end
-- map("n", "<leader>wt", lazyterm, { desc = "Terminal (root dir)" })
-- map("n", "<leader>wT", function()
--   Util.terminal.open()
-- end, { desc = "Terminal (cwd)" })
-- map("n", "<c-/>", lazyterm, { desc = "Terminal (root dir)" })
-- map("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })

vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")
