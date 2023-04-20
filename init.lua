vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.o.relativenumber = true
vim.o.number = true
vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 6

require('packer-plugins')


vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.cmd('colorscheme gruvbox')

local lspconfig = require('lspconfig')
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'gdscript' }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {}
end

require("nvim-tree").setup()


