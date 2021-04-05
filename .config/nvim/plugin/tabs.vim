function! SetIndentation(width)
  execute "set shiftwidth=".a:width
  execute "set tabstop=".a:width
  execute "set softtabstop=".a:width
endfunction

command! -nargs=1 -bar SetIndentation call SetIndentation(<f-args>)
cnoreabbrev si SetIndentation
