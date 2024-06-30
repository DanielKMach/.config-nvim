require("mason").setup()
require("mason-lspconfig").setup()

local signs = {
	'',
	'',
	'󰌵',
	'',
}

vim.diagnostic.config({
	virtual_text = {
		prefix = ' ' -- function(diagnostic) return ' ' .. signs[diagnostic.severity_sort] or '' end
	},
})
