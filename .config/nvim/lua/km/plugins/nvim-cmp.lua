return function()
  local function feedkey(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
  end

  local has_words_before = function()
    if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
      return false
    end
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
  end

  local cmp = require('cmp')
  local luasnip = require('luasnip')

  cmp.setup {
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end
    },
    mapping = {
      ['<Tab>'] = cmp.mapping(function(fallback)
        if vim.fn.pumvisible() == 1 then
          feedkey("<C-n>", "n")
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        -- elseif has_words_before() then
        --   cmp.complete()
        else
          fallback()
        end
      end, {"i", "s"}),

      ['<S-Tab>'] = cmp.mapping(function(fallback)
        if vim.fn.pumvisible() == 1 then
          feedkey("<C-p>", "n")
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, {"i", "s"}),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      }),
      ['<C-j>'] = cmp.mapping(function(fallback)
        if luasnip.expandable() then
          luasnip.expand()
        elseif vim.opt.spell then
          feedkey("<C-G>u<Esc>[s1z=`]a<C-G>u", "i")
        else
          fallback()
        end
      end, {'i'})
    },
    sources = {
      { name = 'path' },
      { name = 'luasnip' },
      { name = 'nvim_lsp' },
      { name = 'crates' }
    }
  }
end
