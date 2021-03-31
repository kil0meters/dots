require('km.completion')

local maps = {
  n = {
    -- folding (only works with custom mappings)
    {'<S-F1>', '<C-i>'}, -- <C-i> is mapped to <S-F1> in alacritty
    {'<tab>', 'za'},
    -- general
    {'Y', 'y$', {silent = true}},
    {'<leader><leader>', ':noh<cr>'},
    -- langauge server protocol
    {'<c-]>',      ':lua vim.lsp.buf.definition()<CR>'},
    {'gD',         ':lua vim.lsp.buf.implementation()<CR>'},
    {'gd',         ':lua vim.lsp.buf.definition()<CR>'},
    {'U',          ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>'},
    {'I',          ':lua vim.lsp.buf.hover()<CR>'},
    {'gr',         ':lua vim.lsp.buf.rename()<CR>'},
    {'ga',         ':lua vim.lsp.buf.code_action()<CR>'},
    {'gs',         ':Telescope lsp_workspace_symbols<CR>'},
    {'gS',         ':Telescope lsp_document_symbols<CR>'},
    {'<leader>do', ':lua vim.lsp.diagnostic.set_loclist()<CR>'},
    -- fuzzy finding
    {'<C-p>',       '<cmd>Telescope fd theme=get_dropdown<CR>'},
    {'<leader>ff',  '<cmd>Telescope fd theme=get_dropdown<CR>'},
    {'<leader>ff',  '<cmd>Telescope treesitter theme=get_dropdown<CR>'},
    {'<leader>fh',  '<cmd>Telescope help_tags theme=get_dropdown<CR>'},
    {'<leader>fm',  '<cmd>Telescope man_pages theme=get_dropdown<CR>'},
    {'<leader>fl',  '<cmd>Telescope live_grep theme=get_dropdown<CR>'},
    {'<leader>fr',  '<cmd>lua require("km.telescope").lsp_references()<CR>'},
    {'<leader>fe',  '<cmd>Telescope quickfix theme=get_dropdown<CR>'},
    {'<leader>fL',  '<cmd>Telescope grep_string theme=get_dropdown<CR>'},
    {'<leader>fc',  '<cmd>Telescope commands theme=get_dropdown<CR>'},
    {'<leader>fb',  '<cmd>Telescope buffers theme=get_dropdown<CR>'},
    {'<leader>fgl', '<cmd>Telescope git_commits theme=get_dropdown<CR>'},
    -- window navigation
    {'<leader>wq',  '<C-w>q'},
    {'<leader>ws',  '<C-w>s'},
    {'<leader>wv',  '<C-w>v'},
    {'<leader>wtv', ':VTerm<CR>'},
    {'<leader>wts', ':Term<CR>'},
    -- formatting
    {'<leader>F', '<cmd>lua vim.lsp.buf.formatting()<CR>'},
    -- tree
    {'<leader>l', ':Lex<CR>'},
    -- undo tree
    {'<leader>u', ':UndotreeToggle<CR>'},
    -- git
    {'<leader>gs', ':lua require"neogit".status.create("split")<CR>'},
  },
  i = {
    -- general
    {'jj', '<Esc>'},
    {';;', '<Esc>A;'},
    {',,', '<Esc>A,'},
    -- completion
    {'<Tab>',     'v:lua.tab()',                {expr = true}},
    {'<S-Tab>',   'v:lua.s_tab()',              {expr = true}},
    {'<C-Space>', 'compe#complete()',           {expr = true}},
    {'<CR>',      'v:lua.completion_confirm()', {expr = true}},
    {'<C-j>',     'v:lua.snippet_completion()', {expr = true}},
  },
  v = {
    -- indentation
    {'<Tab>',   '>gv'},
    {'<S-Tab>', '<gv'},
    {'>',       '>gv'},
    {'<',       '<gv'},
  },
  s = {
    -- completion
    {'<Tab>',     'v:lua.tab()',   {expr = true}},
    {'<S-Tab>',   'v:lua.s_tab()', {expr = true}}
  },
}

for mode, mappings in pairs(maps) do
  for _, mapping in ipairs(mappings) do
    if mapping[3] == nil then
      vim.api.nvim_set_keymap(mode, mapping[1], mapping[2], {silent = true, noremap = true})
    else
      vim.api.nvim_set_keymap(mode, mapping[1], mapping[2], mapping[3])
    end
  end
end
