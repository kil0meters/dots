-- bootstrap packer
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  vim.api.nvim_command 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

local load_config = function(pkg_name)
  return require('plugins/' .. pkg_name)
end

return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim', opt = true}

  use {
    'gruvbox-community/gruvbox',
    config = load_config('gruvbox')
  }

  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = load_config('lualine')
  }

  use {
    'norcalli/nvim-colorizer.lua',
    ft = {'html', 'css', 'javscript', 'typescript', 'config', 'conf', 'dosini', 'yaml'},
    config = load_config('nvim-colorizer'),
  }

  use {
    'Yggdroot/indentLine',
    requires = {
      'lukas-reineke/indent-blankline.nvim',
      branch = 'lua',
    },
    config = load_config('indentLine')
  }

  use {
    'hrsh7th/nvim-compe',
    requires = {
      {'hrsh7th/vim-vsnip'},
      {'hrsh7th/vim-vsnip-integ'}
    },
    config = load_config('nvim-compe')
  }

  -- -- Intellisense
  use {
    'neovim/nvim-lspconfig',
    requires = {'onsails/lspkind-nvim'},
    config = load_config('nvim-lspconfig')
  }

  use {
    'RishabhRD/nvim-lsputils',
    requires = {'RishabhRD/popfix'},
    config = load_config('nvim-lsputils')
  }

  use {
    'kosayoda/nvim-lightbulb',
    config = load_config('nvim-lightbulb')
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    event = 'VimEnter *',
    run = ':TSUpdate',
    config = load_config('nvim-treesitter')
  }

  use {
    '~/Projects/neowiki',
    event = 'VimEnter *',
    requires = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require'neowiki'.setup{}
    end
  }

  use {
    'nvim-treesitter/playground',
    event = 'VimEnter *',
    requires = 'nvim-treesitter/nvim-treesitter',
  }

  use {
    'vimwiki/vimwiki',
    requires = {'tools-life/taskwiki', opt = true},
    config = load_config('vimwiki')
  }

  -- Fuzzy find
  use {
    'nvim-telescope/telescope.nvim',
    -- '~/Projects/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'nvim-treesitter/nvim-treesitter', opt = true}
    },
    config = load_config('telescope')
  }

  use {
    'matze/vim-move',
    config = load_config('vim-move')
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = function()
      require('gitsigns').setup{}
    end
  }

  use {
    'windwp/nvim-autopairs',
    config = load_config('nvim-autopairs')
  }

  use {
    'b3nj5m1n/kommentary',
      config = load_config('kommentary')
  }

  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end,
    config = load_config('firenvim')
  }

  use {
    'TimUntersberger/neogit',
    event = 'VimEnter *',
  }

  use {'sukima/xmledit', ft = 'xml'}
  use {'tmhedberg/SimpylFold', ft = 'python'}
  use {'KeitaNakamura/tex-conceal.vim', ft = 'tex'}
  use {'neovimhaskell/haskell-vim', ft = 'haskell'}

  -- use {'sheerun/vim-polyglot', event = 'VimEnter *'}
  use 'tweekmonster/startuptime.vim'

  use 'mbbill/undotree'
  use 'tjdevries/lsp_extensions.nvim'
  use 'tpope/vim-surround'
  use 'vimlab/split-term.vim'
end)
