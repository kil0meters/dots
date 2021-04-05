" Clear trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Disable line numbers in terminals
autocmd TermOpen * setlocal nonumber norelativenumber

" Set loclist on ~file change
autocmd BufWrite,BufEnter,InsertLeave * lua vim.lsp.diagnostic.set_loclist{open_loclist = false}
