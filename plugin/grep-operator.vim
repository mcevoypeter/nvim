" From https://learnvimscriptthehardway.stevelosh.com/chapters/34.html.

nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

function! s:GrepOperator(type)
    let saved_unnamed_register = @@

    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif

    silent execute "lgrep! " . shellescape(@@) . " ."
    lopen

    let @@ = saved_unnamed_register
endfunction
