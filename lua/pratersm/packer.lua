vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use({ 
	'rose-pine/neovim', 
	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
	end


})

use( 
	'nvim-treesitter/nvim-treesitter', 
	{run = 'TSUpdate'}
	)

	use( 'nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	use('neovim/nvim-lspconfig')
	use('hrsh7th/nvim-cmp')
	use('tpope/vim-fugitive')
	use('hrsh7th/cmp-nvim-lsp')
    use('leoluz/nvim-dap-go')
    use('mfussenegger/nvim-dap')
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
    use('theHamsta/nvim-dap-virtual-text')
    use('folke/neodev.nvim')
    use('williamboman/mason.nvim')
end)

