local lspconfig = require('lspconfig')

lspconfig.pyright.setup({
	on_attach = function()
		print("lsp server (pyright) attached")
	end
})
