return function()
  local lualine = require('lualine')
  lualine.theme = 'gruvbox'
  lualine.options.section_separators = nil
  lualine.options.component_separators = nil
  lualine.status()
end
