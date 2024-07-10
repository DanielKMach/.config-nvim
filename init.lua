-- Packer plugin list
require 'daniels.plugin-list'

-- File explorer setup
require 'daniels.file-tree'

-- LSP setups
require 'daniels.lsp-setup'
require 'daniels.lsp.c'
require 'daniels.lsp.java'
require 'daniels.lsp.lua'
require 'daniels.lsp.python'
require 'daniels.lsp.zig'
require 'daniels.formatter'

-- Debugger setups
require 'daniels.dap.c'
require 'daniels.dap.zig'

-- Code completion setup
require 'daniels.code-completion'

-- Custom statusline
require 'daniels.statusline'

-- Telescope
require 'daniels.telescope'

-- Hexadecimal editor
require 'daniels.hex-editor'

-- Lexima
require 'daniels.lexima'

-- Vim options
require 'daniels.preferences'
require 'daniels.signs'

-- Custom bindings
require 'daniels.key-bindings.ctrl-s'
require 'daniels.key-bindings.dap'
require 'daniels.key-bindings.file-tree'
require 'daniels.key-bindings.lsp'
require 'daniels.key-bindings.replace-all-occurencies'
require 'daniels.key-bindings.terminal'
require 'daniels.key-bindings.misc'

-- Custom commands
require 'daniels.custom-commands.zipit'
