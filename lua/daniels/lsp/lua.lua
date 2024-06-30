local lspconfig = require('lspconfig')
local neodev = require('neodev')

neodev.setup({}) -- Neovim API compatibilty

lspconfig.lua_ls.setup({
	on_attach = function()
		print("lsp server (lua_ls) attached")
	end
})
