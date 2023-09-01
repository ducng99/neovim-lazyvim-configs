vim.api.nvim_create_autocmd("FileType", {
  pattern = { "php", "inc" },
  callback = function()
    if not vim.o.binary then
      vim.cmd("e ++binary")
    else
      -- vim.cmd "hi Ignore ctermfg=15 guifg=bg"
      -- vim.cmd "match Ignore /\r$/"
    end
  end,
})
