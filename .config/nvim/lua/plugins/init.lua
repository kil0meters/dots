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

  -- use {
  --   'gruvbox-community/gruvbox',
  --   event = 'VimEnter *',
  --   config = load_config('gruvbox')
  -- }

  -- use {
  --   'nanotech/jellybeans.vim',
  --   config = function()
  --     vim.cmd "colorscheme jellybeans"
  --   end
  -- }

  use {
    -- 'tomasiser/vim-code-dark',
    '~/Projects/vim-code-dark',
    config = load_config('codedark')
  }

  use {
    'hoob3rt/lualine.nvim',
    -- after = 'gruvbox',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = load_config('lualine')
  }

  use {
    'norcalli/nvim-colorizer.lua',
    ft = {'html', 'css', 'javscript', 'typescript', 'config', 'conf', 'dosini', 'yaml'},
    config = load_config('nvim-colorizer'),
  }

  use {
    -- '~/Projects/indent-blankline.nvim',
    'lukas-reineke/indent-blankline.nvim',
    branch = 'lua',
    config = load_config('indentLine')
  }

  use {
    'hrsh7th/nvim-compe',
    event = 'VimEnter *',
    requires = {
      {'hrsh7th/vim-vsnip'},
      {'hrsh7th/vim-vsnip-integ'}
    },
    config = load_config('nvim-compe')
  }

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
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }

  use {
    'nvim-treesitter/playground',
    after = 'nvim-treesitter',
  }

  use {
    'p00f/nvim-ts-rainbow',
    after = 'nvim-treesitter',
  }

  -- use {
  --   'windwp/nvim-ts-autotag',
  --   after = 'nvim-treesitter',
  -- }

  use {
    '~/Projects/neowiki',
    event = 'VimEnter *',
    requires = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require'neowiki'.setup{}
    end
  }


  use {
    'vimwiki/vimwiki',
    -- ft = {"vimwiki", "wiki"},
    -- cmd = 'VimwikiIndex',
    requires = {'tools-life/taskwiki'},
    config = load_config('vimwiki')
  }


  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'nvim-treesitter/nvim-treesitter', opt = true},
      {'nvim-telescope/telescope-fzy-native.nvim'}
    },
    config = load_config('telescope')
  }

  -- use {
  --   'matze/vim-move',
  --   config = load_config('vim-move')
  -- }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = load_config('gitsigns')
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
    'TimUntersberger/neogit',
    event = 'VimEnter *',
  }

  -- use {'sukima/xmledit', ft = 'xml'}
  use {'neovimhaskell/haskell-vim', ft = 'haskell'}

  -- use 'tweekmonster/startuptime.vim'
  use 'zsugabubus/crazy8.nvim'
  use 'tmhedberg/SimpylFold'
  use 'KeitaNakamura/tex-conceal.vim'
  use 'mbbill/undotree'
  use 'tjdevries/lsp_extensions.nvim'
  use 'tpope/vim-surround'
end)
