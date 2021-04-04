-- bootstrap packer
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  vim.api.nvim_command 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

local load_config = function(pkg_name)
  return require('km.plugins.' .. pkg_name)
end

return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim', opt = true}
  local use_config = function(tbl)
    local lst = vim.split(tbl[1], '/', true)
    tbl.config = require('km.plugins.' .. vim.split(lst[#lst], '.', true)[1])
    use(tbl)
  end

  use_config {'~/Projects/vim-code-dark'}
  use_config {'hoob3rt/lualine.nvim'}

  use_config {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'nvim-treesitter/playground'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-ts-autotag'}
  use {'neovimhaskell/haskell-vim', ft = 'haskell'}

  use_config {'vimwiki/vimwiki', requires = {'tools-life/taskwiki'}}
  use_config {'RishabhRD/nvim-lsputils', requires = {'RishabhRD/popfix'}}
  use_config {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
  use_config {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
  use_config {'norcalli/nvim-colorizer.lua'}
  use_config {'kosayoda/nvim-lightbulb'}
  use_config {'windwp/nvim-autopairs'}
  use_config {'b3nj5m1n/kommentary'}

  use {'zsugabubus/crazy8.nvim'}
  use {'TimUntersberger/neogit'}
  use {'kyazdani42/nvim-web-devicons'}
  use {'mbbill/undotree'}
  use {'tpope/vim-surround'}

  use_config {'hrsh7th/nvim-compe'}
  use {'hrsh7th/vim-vsnip'}

  use_config {'neovim/nvim-lspconfig'}
  use {'onsails/lspkind-nvim'}
  use {'nvim-lua/lsp_extensions.nvim'}

  use_config {
    'nvim-telescope/telescope.nvim',
    branch = 'use_plenary_async',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzy-native.nvim'}
    },
  }

  use {
    '~/Projects/neowiki',
    event = 'VimEnter *',
    requires = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require'neowiki'.setup{}
    end
  }
end)
