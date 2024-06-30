local cmp_kinds = {
	Text = '',
	Method = '',
	Function = '',
	Constructor = '',
	Field = '',
	Variable = '',
	Class = '',
	Interface = '',
	Module = '',
	Property = '',
	Unit = '',
	Value = '',
	Enum = '',
	Keyword = '',
	Snippet = '',
	Color = '',
	File = '',
	Reference = '',
	Folder = '',
	EnumMember = '',
	Constant = '',
	Struct = '',
	Event = '',
	Operator = '',
	TypeParameter = '',
}

-- completeopt is used to manage code suggestions
-- menuone: show popup even when there is only one suggestion
-- noinsert: Only insert text when selection is confirmed
-- noselect: force us to select one from the suggestions
vim.opt.completeopt = {'menuone', 'noinsert', 'preview'}
-- shortmess is used to avoid excessive messages
vim.opt.shortmess = vim.opt.shortmess + { c = true }

local cmp = require('cmp')
local compare = require("cmp.config.compare")

cmp.setup({
	performance = {
		throttle = 0
	},
	mapping = {
		-- UP to go to the Previous Suggested item
		['<Up>'] = cmp.mapping.select_prev_item(),
		-- DOWN to go to the next suggestion
		['<Down>'] = cmp.mapping.select_next_item(),
		-- CTRL+UP to scroll backwards in description
		['<C-Down>'] = cmp.mapping.scroll_docs(-4),
		-- CTRL+DOWN to scroll forwards in the description
		['<C-Up>'] = cmp.mapping.scroll_docs(4),
		-- CTRL+SPACE to bring up completion at current Cursor location
		['<C-Space>'] = cmp.mapping.complete(),
		-- CTRL+e to exit suggestion and close it
		['<C-e>'] = cmp.mapping.close(),
		-- TAB to CONFIRM the currently selection suggestion
		-- We set the ConfirmBehavior to insert the Selected suggestion
		['<Tab>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		})
	},
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lsp_signature_help'},
		{ name = 'buffer' },
		{ name = 'vsnip' },
	},
	sorting = {
		priority_weight = 0,
		comparators = { compare.kind, compare.sort_text }
	},
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	formatting = {
		expandable_indicator = false,
		fields = {'kind', 'abbr'},
		format = function(_, item)
			item.kind = (cmp_kinds[item.kind] or item.kind)
			return item
		end,
	},
	--matching = {
	--	disallow_fuzzy_matching = false,
	--	disallow_fullfuzzy_matching = false,
	--	disallow_partial_fuzzy_matching = false,
	--	disallow_partial_matching = false,
	--	disallow_prefix_unmatching = false,
	--	disallow_symbol_nonprefix_matching = false,
	--},
	completion = {
		completeopt = "menuone,noinsert,preview"
	}
})
