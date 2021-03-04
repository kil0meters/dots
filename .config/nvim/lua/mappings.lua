local map = vim.api.nvim_set_keymap

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

_G.completion_confirm = function()
  if vim.fn.pumvisible() ~= 0 then
    if vim.fn.complete_info()["selected"] == -1 then
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

-- general
map('i', 'jj', '<Esc>', {silent = true, noremap = true})
map('n', 'Y', 'y$', {silent = true})

-- completion
map('i', '<Tab>',     'v:lua.tab()',                {expr = true, noremap = true})
map('s', '<Tab>',     'v:lua.tab()',                {expr = true, noremap = true})
map('i', '<S-Tab>',   'v:lua.s_tab()',              {expr = true, noremap = true})
map('s', '<S-Tab>',   'v:lua.s_tab()',              {expr = true, noremap = true})
map('i', '<C-Space>', 'compe#complete()',           {expr = true, noremap = true})
map('i', '<CR>',      'v:lua.completion_confirm()', {expr = true, noremap = true})
map('i', '<C-j>',     'v:lua.snippet_completion()', {expr = true, noremap = true})

-- langauge server protocol
map('n', '<c-]>',      ':lua vim.lsp.buf.definition()<CR>',         {silent = true, noremap = true})
map('n', 'K',          ':lua vim.lsp.buf.hover()<CR>',              {silent = true, noremap = true})
map('n', 'gD',         ':lua vim.lsp.buf.implementation()<CR>',     {silent = true, noremap = true})
map('n', 'gd',         ':lua vim.lsp.buf.definition()<CR>',         {silent = true, noremap = true})
map('n', 'I',          ':lua vim.lsp.buf.signature_help()<CR>',     {silent = true, noremap = true})
map('n', 'gr',         ':Telescope lsp_references<CR>',             {silent = true, noremap = true})
map('n', 'ga',         ':lua vim.lsp.buf.code_action()<CR>',        {silent = true, noremap = true})
map('n', 'gs',         ':Telescope lsp_workspace_symbols<CR>',      {silent = true, noremap = true})
map('n', 'gS',         ':Telescope lsp_document_symbols<CR>',       {silent = true, noremap = true})
map('n', 'gR',         ':lua vim.lsp.buf.rename()<CR>',             {silent = true, noremap = true})
map('n', '<leader>do', ':lua vim.lsp.diagnostic.set_loclist()<CR>', {silent = true, noremap = true})

-- fuzzy finding
map('n', '<C-p>',       '<cmd>Telescope fd theme=get_dropdown<CR>',          {silent = true, noremap = true})
map('n', '<leader>ff',  '<cmd>Telescope fd theme=get_dropdown<CR>',          {silent = true, noremap = true})
map('n', '<leader>ff',  '<cmd>Telescope treesitter theme=get_dropdown<CR>',  {silent = true, noremap = true})
map('n', '<leader>fh',  '<cmd>Telescope help_tags theme=get_dropdown<CR>',   {silent = true, noremap = true})
map('n', '<leader>fm',  '<cmd>Telescope man_pages theme=get_dropdown<CR>',   {silent = true, noremap = true})
map('n', '<leader>fl',  '<cmd>Telescope live_grep<CR>',                      {silent = true, noremap = true})
map('n', '<leader>fe',  '<cmd>Telescope quickfix theme=get_dropdown<CR>',    {silent = true, noremap = true})
map('n', '<leader>fL',  '<cmd>Telescope grep_string theme=get_dropdown<CR>', {silent = true, noremap = true})
map('n', '<leader>fc',  '<cmd>Telescope commands theme=get_dropdown<CR>',    {silent = true, noremap = true})
map('n', '<leader>fb',  '<cmd>Telescope buffers theme=get_dropdown<CR>',     {silent = true, noremap = true})
map('n', '<leader>fgl', '<cmd>Telescope git_commits theme=get_dropdown<CR>', {silent = true, noremap = true})

-- window navigation
map('n', '<leader>wh',  '<C-w>h',     {silent = true, noremap = true})
map('n', '<leader>wj',  '<C-w>j',     {silent = true, noremap = true})
map('n', '<leader>wk',  '<C-w>k',     {silent = true, noremap = true})
map('n', '<leader>wl',  '<C-w>l',     {silent = true, noremap = true})
map('n', '<leader>wq',  '<C-w>q',     {silent = true, noremap = true})
map('n', '<leader>ws',  '<C-w>s',     {silent = true, noremap = true})
map('n', '<leader>wv',  '<C-w>v',     {silent = true, noremap = true})
map('n', '<leader>wtv', ':VTerm<CR>', {silent = true, noremap = true})
map('n', '<leader>wts', ':Term<CR>',  {silent = true, noremap = true})

-- formatting
map('n', '<leader>F', '<cmd>lua vim.lsp.buf.formatting()<CR>', {silent = true, noremap = true})

-- tree
map('n', '<leader>l', '<cmd>Telescope file_browser theme=get_dropdown<CR>', {silent = true})

-- undo tree
map('n', '<leader>u', ':UndotreeToggle<CR>', {silent = true})

-- indentation
map('v', '<Tab>', '>gv',   {silent = true, noremap = true})
map('v', '<S-Tab>', '<gv', {silent = true, noremap = true})

-- git
map('n', '<leader>gs', ':lua require"neogit".status.create("split")<CR>', {silent = true, noremap = true})
