-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable autoformat for php files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "php", "inc" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Set indentation based on file type
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  command = "setlocal noexpandtab tabstop=4 shiftwidth=4",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  command = "setlocal expandtab shiftwidth=2",
})
