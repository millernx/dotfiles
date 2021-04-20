" Abbrevs and autocommands
iabbrev tehn then
iabbrev wthi with
iabbrev wehn when
iabbrev adn and
iabbrev @@ millernx@protonmail.com
iabbrev @w millernicolas.com

"Comment autocommands
augroup commenting
  autocmd!
  autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
  autocmd FileType python nnoremap <buffer> <localleader>C 0wx<esc>
  autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
  autocmd FileType rust nnoremap <buffer> <localleader>c I//<esc>
  autocmd FileType go nnoremap <buffer> <localleader>c I//<esc>
  autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
  autocmd FileType c nnoremap <buffer> <localleader>c I//<esc>
augroup END

" Snippets

augroup python_snippets
  autocmd!
  autocmd FileType python iabbrev <buffer> iff if:<left>
  autocmd FileType python iabbrev <buffer> ret return
augroup END

augroup js_snippets
  autocmd!
  autocmd FileType javascript iabbrev <buffer> iff if ()<left>
  autocmd FileType javascript iabbrev <buffer> fnc function () {<CR>}<up><left><left><left>
  autocmd FileType javascript iabbrev <buffer> function NOPE, use fnc
augroup END

augroup md_snippets
  autocmd!
  autocmd FileType markdown setlocal spell
  autocmd filetype markdown iabbrev <buffer> -> &rarr;
  autocmd FileType markdown iabbrev <buffer> <- &larr;
  autocmd FileType markdown onoremap <buffer> ih :<c-u>execute "normal! ?^[==\\|--]\\+$\r:nohlsearch\rkvg_"<CR>
  autocmd FileType markdown onoremap <buffer> ah :<c-u>execute "normal! ?^[==\\|--]\\+$\r:nohlsearch\rg_vk0"<CR>
  autocmd FileType markdown onoremap <buffer> in@ :<c-u>execute "normal! /[a-zA-Z\\d\\-\\+.]+@\r:noh\rviw"<cr>
augroup END

augroup c_snippets
  autocmd FileType c iabbrev <buffer> io #include <stdio.h>
  autocmd FileType c iabbrev <buffer> def #define
  autocmd FileType c setlocal makeprg=gcc\ %
  autocmd FileType c nnoremap <localleader>r :<c-u>!./a.out<cr>
augroup END
