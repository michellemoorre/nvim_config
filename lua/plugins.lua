local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

return require('packer').startup(function(use)
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use "wbthomason/packer.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use({
        "catppuccin/nvim",
        as = "catppuccin"
    })
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use "lukas-reineke/indent-blankline.nvim"
    use "glepnir/dashboard-nvim"
    use "nvim-lualine/lualine.nvim"
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use "windwp/nvim-autopairs"

    use 'saadparwaiz1/cmp_luasnip'
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-buffer"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
