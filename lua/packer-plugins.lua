return require('packer').startup(function()
	-- Plugin manager
	use 'wbthomason/packer.nvim'
	
	-- Languages
	use 'tikhomirov/vim-glsl'
	use 'ziglang/zig.vim'
	
	-- File manager
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {'nvim-tree/nvim-tree.lua',
	  	requires = {'nvim-tree/nvim-web-devicons', },tag = 'nightly'
	}
	
	-- Startup screen
	use {
	  "startup-nvim/startup.nvim",
	  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
	  config = function()
		require"startup".setup({theme = "dashboard"})
	  end
	}

	-- Theme
	use 'gruvbox-community/gruvbox'	
	
	-- LSP and autocompletion 
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	
	-- Better syntax highlighting
	use ({'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"})
	
	-- Git 
	use 'tpope/vim-fugitive'
end)

