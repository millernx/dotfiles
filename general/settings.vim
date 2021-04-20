 let g:mapleader = "\<Space>"
 let maplocalleader = "\\"

 syntax enable                           " Enables syntax highlighing
 set relativenumber
 set hidden                              " Required to keep multiple buffers
 set nowrap                              " Display long lines as just one
 set encoding=utf-8                      " The encoding displayed
 set pumheight=10                        " Makes popup menu smaller
 set fileencoding=utf-8                  " The encoding written to file
 set ruler              			            " Show the cursor position all the
 set cmdheight=2                         " More space for displaying messages
 set iskeyword+=-                      	" treat dash separated words as a
 set mouse=a                             " Enable your mouse
 set splitbelow                          " Horizontal splits will
 set splitright                          " Vertical splits will automatically
 set t_Co=256                            " Support 256 colors
 set conceallevel=0                      " So that I can see `` in markdown
 set tabstop=2                           " Insert 2 spaces for a tab
 set shiftwidth=2                        " Change the number of space
 set smarttab                            " Makes tabbing smarter will realize
 set expandtab                           " Converts tabs to spaces
 set smartindent                         " Makes indenting smart
 set autoindent                          " Good auto indent
 set laststatus=0                        " Always display the status line
 set number                              " Line numbers
 set cursorline                          " Enable highlighting of the current
 set background=dark                     " tell vim what the background color
 set showtabline=2                       " Always show tabs
 set noshowmode                          " We don't need to see things like
 set nobackup                            " This is recommended by coc
 set nowritebackup                       " This is recommended by coc
 set updatetime=300                      " Faster completion
 set timeoutlen=500                      " By default timeoutlen is 1000 ms
 set formatoptions-=cro                  " Stop newline continution of
set clipboard=unnamedplus               " Copy paste between vim and
set autochdir                           " Your working directory will
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm
"" You can't stop me
cmap w!! w !sudo tee %"
