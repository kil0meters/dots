return function()
  vim.g.gruvbox_contrast_dark = 'hard'
  vim.g.gruvbox_contrast_light = 'soft'
  vim.g.gruvbox_invert_selection = 0
  vim.g.gruvbox_italic = 1
  vim.g.gruvbox_italicize_comments = 1

  vim.cmd 'colorscheme gruvbox'

  vim.cmd [[

  hi! link DiffAdd GruvboxGreenSign
  hi! link DiffChange GruvboxAquaSign
  hi! link DiffDelete GruvboxRedSign

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
