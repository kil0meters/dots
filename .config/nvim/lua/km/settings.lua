-- TODO: Check status: https://github.com/neovim/neovim/pull/13479

vim.g.mapleader = " "
local ident = 4
local width = 80

local options = {
  buffer = {
    expandtab     = true,    -- use spaces instead of tabs
    smartindent   = true,    -- automatically indent in functions vim.bo.shiftwidth = ident       -- tab length
    tabstop       = ident,   -- tab length
    softtabstop   = ident,   -- tab length
    textwidth     = width,   -- maximum text width
    wrapmargin    = width,   -- when to start wrapping
    formatoptions = 'jrnq', -- format options
    spelllang     = 'en_us', -- language for spell checker
    syntax        = 'on',    -- enable syntax highlighting
    undofile      = true,    -- undofile
  },
  window = {
    relativenumber = true,     -- relative line numbering
    number         = true,     -- line numbering
    wrap           = false,    -- line wrapping
    foldmethod     = 'indent', -- fold based on indentation by default
    signcolumn     = 'yes',    -- enable sign column all the time
    foldlevel      = 99,       -- don't fold files when opened
    concealcursor  = 'n',      -- only conceal in normal mode
    -- colorcolumn = '9999',
    cursorline     = true,
  },
  global = {
    guifont       = 'SFMono Nerd Font:h22',         -- font settings
    termguicolors = true,                           -- use rgb colors in the tui
    clipboard     = 'unnamedplus',                  -- use system clipboard register
    inccommand    = 'nosplit',                      -- shows the effects of search as you type
    lazyredraw    = true,                           -- don't redraw while executing macros
    mouse         = 'a',                            -- mouse control
    smarttab      = true,                           -- backspace deletes 'shiftwidth' spaces
    ignorecase    = true,                           -- ignore capitalization while searching
    smartcase     = true,                           -- override 'ignorecase' if there is a capital letter
    scrolloff     = 20,                             -- screen lines to keep above and below cursor
    splitbelow    = true,                           -- split below
    updatetime    = 600,                            -- how long CursorHold takes
    completeopt   = 'menu,menuone,noselect',        -- completion options
    shortmess     = 'filnxtToOFc',                  -- ui setting
    swapfile      = false,                          -- disable swap files
    backup        = false,                          --
    hidden        = true,                           --
    fillchars     = 'fold: ,vert:│,eob: ,msgsep:‾', --
    showmode      = false,                          --
    autowrite     = true,                           -- autosave
    autowriteall  = true,                           -- autosave
  }
}

-- cmd

for mode, sets in pairs(options) do
  for option, value in pairs(sets) do
    if mode == 'window' then
      vim.wo[option] = value
    elseif mode == 'buffer' then
      vim.bo[option] = value
    end

    vim.o[option] = value
  end
end
