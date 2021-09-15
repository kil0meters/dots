-- TODO: Check status: https://github.com/neovim/neovim/pull/13479

vim.g.mapleader = " "
local ident = 4
local width = 80

-- vim.opt.colorcolumn = '9999',
vim.opt.autowrite     = true                           -- autosave
vim.opt.autowriteall  = true                           -- autosave
vim.opt.backup        = false                          --
vim.opt.clipboard     = 'unnamedplus'                  -- use system clipboard register
vim.opt.completeopt   = { 'menu', 'menuone', 'noselect' } -- completion options
vim.opt.concealcursor = 'n'      -- only conceal in normal mode
vim.opt.cursorline    = true
vim.opt.expandtab     = true    -- use spaces instead of tabs
vim.opt.fillchars     = { fold = " ", vert = "│", eob = " ", msgsep ="‾" }
vim.opt.foldlevel     = 99       -- don't fold files when opened
vim.opt.foldmethod    = 'indent' -- fold based on indentation by default
vim.opt.formatoptions = 'jrnq' -- format options
vim.opt.guifont       = 'SFMono Nerd Font:h22'         -- font settings
vim.opt.hidden        = true                           --
vim.opt.ignorecase    = true                           -- ignore capitalization while searching
vim.opt.inccommand    = 'nosplit'                      -- shows the effects of search as you type
vim.opt.lazyredraw    = true                           -- don't redraw while executing macros
vim.opt.mouse         = 'a'                            -- mouse control
vim.opt.number         = true     -- line numbering
vim.opt.relativenumber = true     -- relative line numbering
vim.opt.scrolloff     = 20                             -- screen lines to keep above and below cursor
vim.opt.shortmess     = 'filnxtToOFc'                  -- ui setting
vim.opt.showmode      = false                          --
vim.opt.signcolumn     = 'yes'    -- enable sign column all the time
vim.opt.smartcase     = true                           -- override 'ignorecase' if there is a capital letter
vim.opt.smartindent   = true    -- automatically indent in functions vim.bo.shiftwidth = ident       -- tab length
vim.opt.smarttab      = true                           -- backspace deletes 'shiftwidth' spaces
vim.opt.softtabstop   = ident   -- tab length
vim.opt.spelllang     = 'en_us' -- language for spell checker
vim.opt.splitbelow    = true                           -- split below
vim.opt.swapfile      = false                          -- disable swap files
vim.opt.syntax        = 'on'    -- enable syntax highlighting
vim.opt.tabstop       = ident   -- tab length
vim.opt.termguicolors = true                           -- use rgb colors in the tui
vim.opt.textwidth     = width   -- maximum text width
vim.opt.undofile      = true    -- undofile
vim.opt.updatetime    = 600                            -- how long CursorHold takes
vim.opt.wrap           = false    -- line wrapping
vim.opt.wrapmargin    = width   -- when to start wrapping
