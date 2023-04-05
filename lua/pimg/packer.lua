vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'doums/darcula'

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use 'ThePrimeagen/vim-be-good'
end)
