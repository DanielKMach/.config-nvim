local terminal = -1
local prev_win = -1

vim.keymap.set('n', 't', function()
	local curr_win = vim.api.nvim_win_get_buf(0)

	if curr_win == terminal and prev_win > -1 then
		vim.cmd('b ' .. prev_win)
		return
	end

	if curr_win ~= terminal and terminal > -1 then
		vim.cmd('b ' .. terminal)
		prev_win = curr_win
		return
	end

	prev_win = vim.api.nvim_win_get_buf(0)
	vim.cmd('terminal')
	terminal = vim.api.nvim_win_get_buf(0)
end)

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>') -- Exit terminal mode with ESCAPE
