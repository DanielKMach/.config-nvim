local lspconfig = require('lspconfig')

lspconfig.clangd.setup({
	on_attach = function()
		print("lsp server (clangd) attached")
	end
})
