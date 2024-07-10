vim.api.nvim_create_user_command('ZipIt',function()
	local name = vim.loop.cwd();
	vim.cmd('!zip -r project.zip ' .. name);
end,{})
