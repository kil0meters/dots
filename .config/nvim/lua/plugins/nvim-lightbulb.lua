return function() 
  vim.fn.sign_define("LightBulbSign", {text = "💡", texthl = "LspDiagnosticsSignWarning"})
  vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
end
