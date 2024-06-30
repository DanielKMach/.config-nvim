local lspconfig = require('lspconfig')

vim.g.zig_fmt_autosave = 1
lspconfig.zls.setup({
	on_attach = function(client, bufnr)
		print("lsp server (zls) attached")
	end
})
