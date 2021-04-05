require('km.completion')

local function map(mode, mapping)
  if mapping[3] == nil then
    vim.api.nvim_set_keymap(mode, mapping[1], mapping[2], {silent = true, noremap = true})
  else
    vim.api.nvim_set_keymap(mode, mapping[1], mapping[2], mapping[3])
  end
end

local function nmap(mapping) map('n', mapping) end
local function imap(mapping) map('i', mapping) end
local function vmap(mapping) map('v', mapping) end
local function smap(mapping) map('s', mapping) end
local function tmap(mapping) map('t', mapping) end

-- folding (only works with custom mappings)
nmap {'<S-F1>', '<C-i>'} -- <C-i> is mapped to <S-F1> in alacritty
nmap {'<tab>', 'za'}
-- general
nmap {'Y', 'y$', {silent = true}}
nmap {'<leader><leader>', ':noh<cr>'}
-- center screen with navigation
nmap {'G', 'Gzz'}
nmap {'<C-d>', '<C-d>zz'}
nmap {'<C-u>', '<C-u>zz'}
nmap {'<leader><leader>', ':noh<cr>'}
-- langauge server protocol
nmap {'<c-]>',      ':lua vim.lsp.buf.definition()<CR>'}
nmap {'gD',         ':lua vim.lsp.buf.implementation()<CR>'}
nmap {'gd',         ':lua vim.lsp.buf.definition()<CR>'}
nmap {'U',          ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>'}
nmap {'I',          ':lua vim.lsp.buf.hover()<CR>'}
nmap {'gr',         ':lua vim.lsp.buf.rename()<CR>'}
nmap {'ga',         ':lua vim.lsp.buf.code_action()<CR>'}
nmap {'gs',         ':Telescope lsp_workspace_symbols<CR>'}
nmap {'gS',         ':Telescope lsp_document_symbols<CR>'}
nmap {'<leader>do', ':lua vim.lsp.diagnostic.set_loclist()<CR>'}
-- quickfix lists
nmap {'<leader>;', ':ToggleQuickfixList<CR>'}
nmap {"<leader>'", ':ToggleLocationList<CR>'}
nmap {'<C-j>', ':cn<CR>'}
nmap {'<C-k>', ':cp<CR>'}
nmap {'<leader>j', ':lne<CR>'}
nmap {'<leader>k', ':lp<CR>'}
-- fuzzy finding
nmap {'<C-p>',       '<cmd>Telescope fd theme=get_dropdown<CR>'}
nmap {'<leader>ff',  '<cmd>Telescope fd theme=get_dropdown<CR>'}
nmap {'<leader>ff',  '<cmd>Telescope treesitter theme=get_dropdown<CR>'}
nmap {'<leader>fh',  '<cmd>Telescope help_tags theme=get_dropdown<CR>'}
nmap {'<leader>fm',  '<cmd>Telescope man_pages theme=get_dropdown<CR>'}
nmap {'<leader>fl',  '<cmd>Telescope live_grep theme=get_dropdown<CR>'}
nmap {'<leader>fr',  '<cmd>lua require("km.telescope").lsp_references()<CR>'}
nmap {'<leader>fp',  '<cmd>lua require("km.telescope").directory(require("telescope.themes").get_dropdown({prompt_title = "Projects", directory = "~/Projects/"}))<CR>'}
nmap {'<leader>fc',  '<cmd>lua require("km.telescope").directory(require("telescope.themes").get_dropdown({prompt_title = "Configs", directory = "~/.config/"}))<CR>'}
nmap {'<leader>fe',  '<cmd>Telescope lsp_workspace_diagnostics theme=get_dropdown<CR>'}
nmap {'<leader>fL',  '<cmd>Telescope grep_string theme=get_dropdown<CR>'}
nmap {'<leader>fC',  '<cmd>Telescope commands theme=get_dropdown<CR>'}
nmap {'<leader>fb',  '<cmd>Telescope buffers theme=get_dropdown<CR>'}
nmap {'<leader>fgl', '<cmd>Telescope git_commits theme=get_dropdown<CR>'}
 -- window resizing
nmap {'<M-h>', '<C-w><'}
nmap {'<M-j>', '<C-w>-'}
nmap {'<M-k>', '<C-w>+'}
nmap {'<M-l>', '<C-w>>'}
 -- terminal splits
nmap {'<C-w>tv', ':vsplit term://fish<CR>i'}
nmap {'<C-w>ts', ':split term://fish<CR>i'}
 -- formatting
nmap {'<leader>F', '<cmd>lua vim.lsp.buf.formatting()<CR>'}
 -- tree
nmap {'<leader>l', ':Lex<CR>'}
 -- undo tree
nmap {'<leader>u', ':UndotreeToggle<CR>'}
 -- git
nmap {'<leader>gs', ':lua require"neogit".status.create("split")<CR>'}
 -- move
-- nmap {'<C-j>', ':m+<CR>=='}
-- nmap {'<C-k>', ':m-2<CR>=='}
-- vmap {'<C-j>', ":'<,'>m'>+<CR>gv=gv=="}
-- vmap {'<C-k>', ":'<,'>m-2<CR>gv=gv=="}
-- general
imap {'jj', '<Esc>'}
imap {';;', '<Esc>A;'}
imap {',,', '<Esc>A,'}
-- completion
imap {'<Tab>',     'v:lua.tab()',                {expr = true}}
smap {'<Tab>',     'v:lua.tab()',                {expr = true}}
imap {'<S-Tab>',   'v:lua.s_tab()',              {expr = true}}
smap {'<S-Tab>',   'v:lua.s_tab()',              {expr = true}}
imap {'<C-Space>', 'compe#complete()',           {expr = true}}
imap {'<CR>',      'v:lua.completion_confirm()', {expr = true}}
imap {'<C-e>',     'compe#close("<C-e>")',       {expr = true}}
imap {'<C-j>',     'v:lua.snippet_completion()', {expr = true}}
