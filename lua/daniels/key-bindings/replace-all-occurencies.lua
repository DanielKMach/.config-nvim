local math = require 'math'

vim.keymap.set('v', '<leader>ca', function()
	local bufnr = vim.api.nvim_win_get_buf(0)
	local vpos = vim.fn.getpos('v')
	local cpos = vim.fn.getcurpos()

	local minl = math.min(vpos[2]-1, cpos[2]-1)
	local minc = math.min(vpos[3]-1, cpos[3]-1)
	local maxl = math.max(vpos[2]-1, cpos[2]-1)
	local maxc = math.max(vpos[3],   cpos[3])

	local text = table.concat(vim.api.nvim_buf_get_text(bufnr, minl, minc, maxl, maxc, {}), ',')
	vim.api.nvim_input('<Esc>')
	vim.schedule(function()
		vim.api.nvim_input(':%s/' .. text .. '/')
	end)
end)
