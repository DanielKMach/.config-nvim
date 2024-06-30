return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'

	-- LSP
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use 'folke/neodev.nvim' -- Neovim API compatibility
	use 'mfussenegger/nvim-jdtls' -- JDTLS compatibility

	-- Autocompletion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'

	-- File tree viewer
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- DAP for debugging
	use 'mfussenegger/nvim-dap'

	-- Status line
	use 'nvim-lualine/lualine.nvim'

	-- Lexima
	use 'cohama/lexima.vim'

	-- Hexadecimal editor
	use 'RaafatTurki/hex.nvim'
end)
