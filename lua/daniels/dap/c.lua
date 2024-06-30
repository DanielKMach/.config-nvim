local dap = require('dap')

dap.adapters.cppdbg = {
	type = 'executable',
	id = 'cppdbg',
	command = '/home/danielkm/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.c = {
	{
		name = "Launch file",
		type = "cppdbg",
		request = "launch",
		program = function()
			local cwd = vim.fn.expand('%:h')
			local file = vim.fn.expand('%:t')
			return coroutine.create(function(coroi)
				local handle
				handle = vim.loop.spawn('gcc', {
					args = { file, '-o', 'output' },
					cwd = cwd,
				}, function(code, _)
					if handle then handle:close() end
					vim.schedule(function()
						coroutine.resume(coroi, (code == 0) and (cwd .. '/output') or dap.ABORT)
					end)
				end)
			end)
		end,
		cwd = '${workspaceFolder}',
		stopAtEntry = true,
	},
}
