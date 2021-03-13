-- local _G = {}

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
    return t"<C-n>"
  elseif vim.fn['vsnip#jumpable'](1) ~= 0 then
    -- For whatever reason the nvim api doesn't escape <Plug>
    -- vim.cmd [[ call feedkeys("\<Plug>(vsnip-jump-next)") ]]
    return t"<Plug>(vsnip-jump-next)"
  else
    return t"<Tab>"
  end
end

_G.s_tab = function()
  if vim.fn.pumvisible() ~= 0 then
    return t"<C-p>"
  elseif vim.fn['vsnip#jumpable'](-1) ~= 0 then
    -- vim.cmd [[ call feedkeys("\<Plug>(vsnip-jump-prev)") ]]
    return t"<Plug>(vsnip-jump-prev)"
  else
    return t"<S-Tab>"
  end
end

_G.snippet_completion = function()
  if vim.fn['vsnip#expandable']() ~= 0 then
    -- vim.cmd [[ call feedkeys("\<Plug>(vsnip-expand)") ]]
    return t"<Plug>(vsnip-expand)"
  elseif vim.fn.pumvisible() ~= 0 then
    return vim.fn["compe#confirm"]()
  elseif vim.wo.spell then
    return t"<C-G>u<Esc>[s1z=`]a<C-G>u"
  else
    return t"<C-j>"
  end
end
