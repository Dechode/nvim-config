return require('packer').startup(function()
	-- Plugin manager
	use 'wbthomason/packer.nvim'
	-- Theme
	use 'gruvbox-community/gruvbox'
	-- LSP and autocompletion 
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	-- Languages
	use 'tikhomirov/vim-glsl'
	use 'ziglang/zig.vim'
	-- File manager
	use {'nvim-tree/nvim-tree.lua',
  	requires = {'nvim-tree/nvim-web-devicons', },tag = 'nightly'}
	-- Better syntax highlighting
	use ('nvim-treesitter/nvim-treesitter',{run = ":TSUpdate"})
end)

