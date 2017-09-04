set number
syntax on

set tabstop=4
"set autoindent
set expandtab
set shiftwidth=4


"カーソルラインを表示する
set cursorline

"検索結果をハイライトする
set hlsearch

" カーソル位置記憶
if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif
