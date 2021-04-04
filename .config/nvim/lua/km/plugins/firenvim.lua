return function()
  vim.cmd [[ au BufEnter github.com_*.txt set filetype=markdown ]]

  vim.g.firenvim_config = {
    globalSettings = { alt = 'all' },
    localSettings = {
      ['.*'] = {
        ['cmdline'] = 'neovim',
        ['content'] = 'text',
        ['priority'] = 0,
        ['selector'] = 'textarea',
        ['takeover'] = 'always',
      },
      ['https?://twitter.com'] = { takeover = 'never', priority = 1 },
      ['https?://regex101.com'] = { takeover = 'never', priority = 1 },
      ['https?://www.twitch.tv'] = { takeover = 'never', priority = 1 },
      ['https?://www.destiny.gg'] = { takeover = 'never', priority = 1 },
    }
  }
end
