return function()
  require('lualine').setup{
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch'},
      lualine_c = {'filename'},

      lualine_x = {'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'},
    },
    inactive_sections = {
      lualine_b = {},
      lualine_a = {},
      lualine_c = {'filename'},

      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    options = {
      -- theme = 'gruvbox',
      theme = 'codedark',
      section_separators = '',
      component_separators = ''
    }
  }
end
