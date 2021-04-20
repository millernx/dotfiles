if empty(glob('~./config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
endif

call plug#begin('~/.config/nvim/autoload/plugged')
	
	Plug 'sheerun/vim-polyglot'
	Plug 'scrooloose/NERDTree'
	Plug 'jiangmiao/auto-pairs'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'morhetz/gruvbox'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-rooter'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }

call plug#end()
