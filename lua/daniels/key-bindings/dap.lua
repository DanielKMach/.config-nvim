local dap = require('dap')

vim.keymap.set('n', '<F5>',  dap.run_last)
vim.keymap.set('n', '<F6>',  dap.continue)
-- vim.keymap.set('n', '<C-b>', dap.toggle_breakpoint)
