-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.timeoutlen = 0 -- show which-key immediately
vim.opt.mouse = "" -- disable mouse
vim.opt.shellcmdflag = "-ic" -- enable shell aliases when using :read

-- vim.opt.foldmethod = "expr" -- programmatic folding
-- vim.opt.foldlevel = 99 -- show all folds when opening file
-- vim.opt.foldenable = true -- show all folds when opening file
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- use treesitter folding
-- vim.opt.foldlevelstart = 99 -- start with all folds open

vim.cmd([[
         augroup Markdown_nowrap
           autocmd!
           autocmd BufEnter *.md set nowrap
         augroup END
       ]])

if vim.g.neovide then
  -- font
  vim.o.guifont = "Source Code Pro:h14:b"

  -- scale
  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.10)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.10)
  end)

  -- padding for presentation
  vim.g.neovide_padding_top = 40
  vim.g.neovide_padding_bottom = 40
  vim.g.neovide_padding_right = 40
  vim.g.neovide_padding_left = 40

  -- hide mouse
  vim.g.neovide_hide_mouse_when_typing = true

  -- cursor trails
  vim.g.neovide_cursor_trail_size = 0.6

  -- animation
  vim.g.neovide_cursor_animation_length = 0.06

  -- clipboard
  if vim.g.neovide then
    vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
    vim.keymap.set("v", "<D-c>", '"+y') -- Copy
    vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
    vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
    vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
    vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
  end

  -- Allow clipboard copy paste in neovim
  vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
end
