local r, api = pcall(require, 'nvim-tree.api')
if not r then return end

-- Toggle tree
vim.keymap.set('n', '<C-b>', api.tree.toggle)
