-- local _G = {}

local function feedkey(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local cmp = require'cmp'

_G.snippet_completion = function()
  if vim.fn['vsnip#expandable']() ~= 0 then
    -- vim.cmd [[ call feedkeys("\<Plug>(vsnip-expand)") ]]
    feedkey("<Plug>(vsnip-expand)", "")
  elseif vim.fn.pumvisible() ~= 0 then
    cmp.mapping.confirm({behabior = cmp.ConfirmBehavior.Replace, select = true})
  elseif vim.wo.spell then
    feedkey("<C-G>u<Esc>[s1z=`]a<C-G>u", "n")
  else
    fallback()
  end
end
