vim.keymap.set('n', '<C-s>', function()
	if vim.fn.expand('%:h') == '' then
		vim.ui.input({
				prompt = "Save file as: ",
				text = vim.fn.getcwd() .. '/',
				completion = 'file'
			},
			function(path)
				if path ~= nil then
					vim.cmd(':w ' .. path)
				end
			end
		)
	else
		vim.cmd(':w')
	end
end)
