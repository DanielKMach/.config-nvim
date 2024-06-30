vim.opt.showmode = false

local theme = require('lualine.themes.onedark')
for _, value in pairs(theme) do
	if value.a then value.a.fg = '#161613' end
	if value.b then value.b.bg = '#161613' end
	if value.c then
		value.c.bg = '#161613'
		value.c.fg = '#edeee1'
	end
end
theme.inactive.c.fg='#6e7066'

local lualine = require('lualine')

local function modifiable()
	return vim.bo.modifiable
end

lualine.setup({
	options = {
		theme = theme,
		icons_enabled = true,
		component_separators = { left = '|', right = '|'},
		section_separators = { left = '◣', right = '◢'},
	},
	sections = {
		lualine_a = {
			{'mode'}
		},
		lualine_c = {
			{'filename', symbols={modified='ꔷ', readonly='', unnamed='[Unnamed]', newfile='[New]'}}
		},
		lualine_x = {
			{'diagnostics', cond=modifiable, symbols={error=' ', warn=' ', info=' ', hint='󰌵 '}},
			{'encoding', cond=modifiable},
			{'filetype', cond=modifiable},
			{'progress'}
		},
		lualine_z = {
			{'branch', cond=modifiable, icon='󰘬'}
		},
		lualine_y = {},
		lualine_b = {},
	},
	inactive_sections = {
		lualine_c = {
			{
				'filename',
				symbols = {
					modified = '',      -- Text to show when the file is modified.
					readonly = '',      -- Text to show when the file is non-modifiable or readonly.
					unnamed = '[Unnamed]', -- Text to show for unnamed buffers.
					newfile = '[New]',     -- Text to show for newly created file before first write
				}
			}
		},
		lualine_x = {}
	},
})
