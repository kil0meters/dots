require 'settings'
require 'mappings'
require 'plugins'

-----COMMANDS------

-- let &t_TI = "\<Esc>[>4;2m"
-- let &t_TE = "\<Esc>[>4;m"
-- nno <S-F1> <C-i>
vim.cmd [[
filetype plugin indent on
autocmd BufWritePre * :%s/\s\+$//e
]]

