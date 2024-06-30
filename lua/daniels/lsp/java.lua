local lspconfig = require('lspconfig')

-- jdtls.start_or_attach({
-- 	cmd = {'/home/danielkm/.local/share/nvim/mason/bin/jdtls'},
-- 	root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
-- })

lspconfig.jdtls.setup({
	single_file_support = true,
	flags = {
		debounce_text_changes = 150,
	},
	on_attach = function()
		print("lsp server (jdtls) attach")
	end
})
