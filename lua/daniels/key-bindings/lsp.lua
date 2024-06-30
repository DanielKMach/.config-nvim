vim.keymap.set({'n'}, '<leader>r', function()
	vim.lsp.buf.rename(nil, {})
end)

vim.keymap.set({'n'}, '<leader>a', function()
	vim.lsp.buf.code_action(nil);
end)
