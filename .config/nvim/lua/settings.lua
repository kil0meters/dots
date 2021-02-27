-- TODO: Check status: https://github.com/neovim/neovim/pull/13479

vim.g.mapleader = " "
local ident = 4
local width = 80

vim.bo.expandtab = true         -- use spaces instead of tabs
vim.bo.smartindent = true       -- automatically indent in functions vim.bo.shiftwidth = ident       -- tab length
vim.bo.tabstop = ident          -- tab length
vim.bo.softtabstop = ident      -- tab length
vim.bo.textwidth = width        -- maximum text width
vim.bo.wrapmargin = width       -- when to start wrapping
vim.bo.formatoptions = 'jcroql' -- format options
vim.bo.spelllang = 'en_us'      -- language for spell checker
vim.bo.syntax = 'on'            -- enable syntax highlighting
vim.bo.undofile = true          -- undofile

vim.o.expandtab = true         -- use spaces instead of tabs
vim.o.smartindent = true       -- automatically indent in functions
vim.o.shiftwidth = ident       -- tab length
vim.o.tabstop = ident          -- tab length
vim.o.softtabstop = ident      -- tab length
vim.o.textwidth = width        -- maximum text width
vim.o.wrapmargin = width       -- when to start wrapping
vim.o.formatoptions = 'jcroql' -- format options
vim.o.spelllang = 'en_us'      -- language for spell checker
vim.o.syntax = 'on'            -- enable syntax highlighting
vim.o.undofile = true          -- undofile
vim.o.autowrite = true         -- autosave
vim.o.autowriteall = true      -- autosave

-- Global

vim.o.guifont = 'SFMono Nerd Font:h22'      -- font settings
vim.o.termguicolors = true                  -- use rgb colors in the tui
vim.o.clipboard = 'unnamedplus'             -- use system clipboard register
vim.o.inccommand = 'nosplit'                -- shows the effects of search as you type
vim.o.lazyredraw = true                     -- don't redraw while executing macros
vim.o.mouse = 'a'                           -- mouse control
vim.o.smarttab = true                       -- backspace deletes 'shiftwidth' spaces
vim.o.ignorecase = true                     -- ignore capitalization while searching
vim.o.smartcase = true                      -- override 'ignorecase' if there is a capital letter
vim.o.hlsearch = false                      -- don't highlight previous search terms
vim.o.scrolloff = 20                        -- screen lines to keep above and below cursor
vim.o.splitbelow = true                     -- split below
vim.o.updatetime = 1000                     -- how long CursorHold takes
vim.o.completeopt = 'menu,menuone,noselect' -- completion options
vim.o.shortmess = 'filnxtToOFc'             -- ui setting
vim.o.swapfile = false                      -- disable swap files
vim.o.backup = false                        --
vim.o.hidden = true
vim.o.fillchars = 'fold: ,vert:│,eob: ,msgsep:‾'
vim.o.showmode = false

-- Window

vim.wo.relativenumber = true -- relative line numbering
vim.wo.number = true         -- line numbering
vim.wo.wrap = false          -- line wrapping
vim.wo.list = true           -- display a character for tabs
vim.wo.lcs = 'tab:▏ '        -- display character for space tabs
vim.wo.foldmethod = 'syntax' -- fold based on syntax
vim.wo.signcolumn = 'yes'    -- enable sign column all the time
vim.wo.foldlevel = 99        -- don't fold files when opened
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'treesitter#foldexpr()'

vim.o.relativenumber = true -- relative line numbering
vim.o.number = true         -- line numbering
vim.o.wrap = false          -- line wrapping
vim.o.list = true           -- display a character for tabs
vim.o.lcs = 'tab:▏ '        -- display character for space tabs
vim.o.foldmethod = 'syntax' -- fold based on syntax
vim.o.signcolumn = 'yes'    -- enable sign column all the time
vim.o.foldlevel = 99        -- don't fold files when opened
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'treesitter#foldexpr()'
