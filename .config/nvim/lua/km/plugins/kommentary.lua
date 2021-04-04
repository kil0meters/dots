return function()
  require'kommentary.config'.configure_language("lua", {
    single_line_comment_string = "--",
    multi_line_comment_strings = {"--[[", "]]"},
    prefer_single_line_comments = true,
  })
end
