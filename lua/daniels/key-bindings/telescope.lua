local r, tele = pcall(require, 'telescope.builtin')
if not r then return end

vim.keymap.set('n', 'q', function() vim.cmd("Telescope") end)
