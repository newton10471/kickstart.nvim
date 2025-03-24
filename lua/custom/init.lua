vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function()
    -- Convert tabs to spaces (if expandtab is set)
    if vim.bo.expandtab then
      vim.cmd 'retab'
    end

    -- Reindent the whole file
    vim.cmd 'normal! gg=G'
  end,
})
