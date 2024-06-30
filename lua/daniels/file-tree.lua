-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
	disable_netrw = true,
	hijack_cursor = true,
	modified = { enable = true },
	git = { enable = true },
	filters = { git_ignored = false },
	view = {
		width = {
			padding = 1
		}
	},
	renderer = {
		add_trailing = true,
		highlight_modified = 'all',
		highlight_git = 'name',
		icons = {
			show = { folder_arrow = false, git = false },
			modified_placement = 'after',
			web_devicons = {
				file = {
					enable = true,
				},
			},
			glyphs = {
				default = '',
				bookmark = '',
				modified = 'ꔷ',
				folder = {
					default = '',
					open =  '',
					empty = '',
					empty_open = '',
					symlink = '',
					symlink_open = '',
				},
			}
		}
	},
})
