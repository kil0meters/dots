return function()
  require 'colorizer'.setup(
    { '*' },
    {
      RGB      = true, -- #RGB hex codes
      RRGGBB   = true, -- #RRGGBB hex codes
      RRGGBBAA = true, -- #RRGGBBAA hex codes
      rgb_fn   = true, -- CSS rgb() and rgba() functions
      hsl_fn   = true, -- CSS hsl() and hsla() functions
    }
  )
end
