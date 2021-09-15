return function()
  local luasnip = require('luasnip')

  luasnip.filetype_set("cpp", { "c" })

  vim.opt.runtimepath = vim.opt.runtimepath + '~/.config/nvim/snippets'
  require("luasnip.loaders.from_vscode").lazy_load()
end
