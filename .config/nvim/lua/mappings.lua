local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

_G.completion_confirm = function() if vim.fn.pumvisible() ~= 0 then if vim.fn.complete_info()["selected"] == -1 then
      return t'<C-n>' .. vim.fn["compe#confirm"]()
    else
      return vim.fn["compe#confirm"]()
    end
  else
    return require'nvim-autopairs'.check_break_line_char()
  end
end

_G.tab = function()
  if vim.fn.pumvisible() ~= 0 then
    return t'<C-n>'
  elseif vim.fn['vsnip#jumpable'](1) ~= 0 then
    -- For whatever reason the nvim api doesn't escape <Plug>
    vim.cmd [[ call feedkeys("\<Plug>(vsnip-jump-next)") ]]
    return ''
  else
    return t'<Tab>'
  end
end

_G.s_tab = function()
  if vim.fn.pumvisible() ~= 0 then
    return t'<C-p>'
  elseif vim.fn['vsnip#jumpable'](1) ~= 0 then
    vim.cmd [[ call feedkeys("\<Plug>(vsnip-jump-prev)") ]]
    return ''
  else
    return t'<S-Tab>'
  end
end

_G.snippet_completion = function()
  if vim.fn['vsnip#expandable']() ~= 0 then
    vim.cmd [[ call feedkeys("\<Plug>(vsnip-expand)") ]]
    return ''
  elseif vim.fn.pumvisible() ~= 0 then
    return vim.fn["compe#confirm"]()
  elseif vim.wo.spell then
    return t'<C-G>u<Esc>[s1z=`]a<C-G>u'
  else
    return t'<C-j>'
  end
end

local maps = {
  n = {
    -- folding (only works with custom mappings)
    {'<S-F1>', '<C-i>'}, -- <C-i> is mapped to <S-F1> in alacritty
    {'<tab>', 'za'},
    -- general
    {'Y', 'y$', {silent = true}},
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
    {'<leader>h',   '<C-w>h'},
    {'<leader>j',   '<C-w>j'},
    {'<leader>k',   '<C-w>k'},
    {'<leader>l',   '<C-w>l'},
    {'<leader>wq',  '<C-w>q'},
    {'<leader>ws',  '<C-w>s'},
    {'<leader>wv',  '<C-w>v'},
    {'<leader>wtv', ':VTerm<CR>'},
    {'<leader>wts', ':Term<CR>'},
    -- formatting
    {'<leader>F', '<cmd>lua vim.lsp.buf.formatting()<CR>'},
    -- tree
    {'<leader>L', '<cmd>Telescope file_browser theme=get_dropdown<CR>'},
    -- undo tree
    {'<leader>u', ':UndotreeToggle<CR>'},
    -- git
    {'<leader>gs', ':lua require"neogit".status.create("split")<CR>'},
  },
  i = {
    -- general
    {'jj', '<Esc>'},
    -- completion
    {'<Tab>',     'v:lua.tab()', {expr = true}},
    {'<S-Tab>',   'v:lua.s_tab()', {expr = true}},
    {'<C-Space>', 'compe#complete()', {expr = true}},
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
    {'<Tab>',     'v:lua.tab()'},
    {'<S-Tab>',   'v:lua.s_tab()'}
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
