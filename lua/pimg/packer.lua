vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'


	use 'doums/darcula'

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use 'ThePrimeagen/vim-be-good'

    use 'fedepujol/move.nvim'
    if not vim.g.vscode then

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.1',
            -- or                            , branch = '0.1.x',
            requires = { {'nvim-lua/plenary.nvim'} }
        }
        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v2.x',
            requires = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},             -- Required
                {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        },
        use {
            "someone-stole-my-name/yaml-companion.nvim",
            requires = {
                { "neovim/nvim-lspconfig" },
                { "nvim-lua/plenary.nvim" },
                { "nvim-telescope/telescope.nvim" },
            },
            config = function()
                require("telescope").load_extension("yaml_schema")
            end,
        }
    }
end

end)
