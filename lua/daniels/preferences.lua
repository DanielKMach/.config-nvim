vim.cmd('color monokai')

-- Tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Visual
vim.opt.number = true
vim.opt.numberwidth = 5
vim.opt.cursorline = true
vim.opt.signcolumn = 'no'

-- Copy/paste
vim.opt.clipboard = 'unnamedplus'

vim.opt.list = true
vim.opt.listchars = { tab = '▏ ', lead = '•' }
