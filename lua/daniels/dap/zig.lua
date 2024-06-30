local dap = require('dap')

-- Utilizando adaptador de C (cppdbg) para debugging em zig
dap.configurations.zig = {
	{
		name = "Run zig file",
		type = "cppdbg",
		request = "launch",
		program = function()
			local cwd = vim.fn.expand('%:h')
			local file = vim.fn.expand('%:t')
			return coroutine.create(function(coroi)
				local handle
				local stdout = vim.loop.new_pipe(false)
				print("[dap] Iniciando compilação...")
				stdout:read_start(vim.schedule_wrap(function(_, chunk)
					if chunk then
						local lines = vim.split(chunk, '\n')
						vim.schedule(function() print('[dap] ' .. lines[#lines]) end)
					end
				end))
				handle = vim.loop.spawn('zig', {
					args = { 'build-exe', file, '--name', 'output' },
					stdio = { nil, stdout, nil },
					cwd = cwd,
				}, vim.schedule_wrap(function(code, _)
					stdout:read_stop()
					stdout:close()
					if handle then handle:close() end
					coroutine.resume(coroi, (code == 0) and (cwd .. '/output') or dap.ABORT)
				end))
			end)
		end,
		cwd = '${workspaceFolder}',
		stopAtEntry = true,
	},
}
