"" Hard way
noremap <leader>- ddp
noremap <leader>_ ddkP
" shortcut to configs
nnoremap <leader>em :vsplit $HOME/.config/nvim/keys/mappings.vim<cr>
nnoremap <leader>ea :vsplit $HOME/.config/nvim/general/abbreviations.vim<cr>
nnoremap <leader>es :vsplit $HOME/.config/nvim/general/settings.vim<cr>
nnoremap <leader>si :source $MYVIMRC<cr>

"leader leader return to last
nnoremap <leader><leader> <c-^>
" Surround in quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>

"Begining of line
nnoremap H 0
nnoremap L $

"esc
inoremap jk <esc>
inoremap <esc> <nop>

" Operator moves
" in parentheses / brackets / quotes
onoremap p i(
onoremap ' i'
onoremap " i"
onoremap in( <c-u>normal! f(vi(<cr>
onoremap il( <c-u>normal! F)vi(<cr>
onoremap in{ <c-u>normal! f{vi{<cr>
onoremap il{ <c-u>normal! F}vi{<cr>


" Better nav for omnicomplete
 inoremap <expr> <c-j> ("\<C-n>")
 inoremap <expr> <c-k> ("\<C-p>")
"
" " Use alt + hjkl to resize windows
 nnoremap <M-j>    :resize -2<CR>
 nnoremap <M-k>    :resize +2<CR>
 nnoremap <M-h>    :vertical resize -2<CR>
 nnoremap <M-l>    :vertical resize +2<CR>
"

" Easy CAPS
imap <c-u> <esc>viwUea
nnoremap <c-u> viwU<Esc>
"
"" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
 nnoremap <S-TAB> :bprevious<CR>
"
"" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
 nnoremap <C-Q> :wq!<CR>
" " Use control-c instead of escape
 nnoremap <C-c> <Esc>
" " <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"
" " Better tabbing
vnoremap < <gv
vnoremap > >gv
"
"" Better window navigation
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da"

" Plugins
"
" FZF
nmap <C-P> :FZF<CR>

" NERDTree
nmap <Leader>t :NERDTree<CR>
nmap <Leader>T :NERDTreeClose<CR>
