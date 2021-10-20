return function()
  -- vim.g.gruvbox_contrast_dark = 'hard'
  -- vim.g.gruvbox_contrast_light = 'soft'
  vim.g.gruvbox_invert_selection = 0
  vim.g.gruvbox_italic = 1
  vim.g.gruvbox_italicize_comments = 1
  vim.g.gruvbox_sign_column = 'bg0'

  vim.cmd 'colorscheme gruvbox'

  -- hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
  -- hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
  -- hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
  -- vim.cmd [[
  -- hi! link LspReferenceRead Visual
  -- hi! link LspReferenceText Visual
  -- hi! link LspReferenceWrite Visual

  -- hi! link DiffAdd GruvboxGreenSign
  -- hi! link DiffChange GruvboxAquaSign
  -- hi! link DiffDelete GruvboxRedSign

  vim.cmd [[
  hi! link rainbowcol1 GruvboxOrange
  hi! link rainbowcol2 GruvboxAqua
  hi! link rainbowcol3 GruvboxRed
  hi! link rainbowcol4 GruvboxBlue
  hi! link rainbowcol5 GruvboxYellow
  hi! link rainbowcol6 GruvboxPurple
  hi! link rainbowcol7 GruvboxFg1

  hi! link NeowikiH1 GruvboxOrangeBold
  hi! link NeowikiH2 GruvboxAquaBold
  hi! link NeowikiH3 GruvboxRedBold
  hi! link NeowikiH4 GruvboxBlueBold
  hi! link NeowikiH5 GruvboxYellowBold
  hi! link NeowikiH6 GruvboxPurpleBold
  hi! link NeowikiHeadingParameters GruvboxGray
  hi! link NeowikiTodo Todo
  hi! link NeowikiDone GruvboxAqua
  hi! link NeowikiTodoProgress GruvboxGray
  ]]
end
