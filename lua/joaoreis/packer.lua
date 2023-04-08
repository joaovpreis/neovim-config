-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'folke/tokyonight.nvim',
  	as = 'tokyonight',
	config = function()
		vim.cmd('colorscheme tokyonight-storm')
	end
  })
    -- Instead of true it can also be a list of languages
  
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('neovim/nvim-lspconfig')
  use({
	'williamboman/mason.nvim',
 	'williamboman/mason-lspconfig.nvim'
})
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-nvim-lsp')
  use('RRethy/nvim-treesitter-endwise')
  use('mhartington/formatter.nvim')
  use('jose-elias-alvarez/null-ls.nvim')

end)
