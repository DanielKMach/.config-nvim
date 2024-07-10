local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.java',
  group = augroup,
  callback = function()
    vim.lsp.buf.format()
  end,
})
