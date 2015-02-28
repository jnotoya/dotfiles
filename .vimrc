
set encoding=utf-8
scriptencoding utf-8

" .vimrc が重複して読み込まれるのを防ぐインクルードガード
if ! exists("g:vimrc_processing")
let g:vimrc_processing=1

filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

" 見やすい配色にする 
NeoBundle 'altercation/vim-colors-solarized'

" 開いているファイルの情報を画面に表示
NeoBundle 'itchyny/lightline.vim'
set t_Co=256 "lightline のために256色対応に
set laststatus=2 " ステータス行の確保
source ~/.vim-settings.d/lightline-setting.vim

" Ctrl-P でファイルを探す
NeoBundle 'kien/ctrlp.vim'

NeoBundle 'scrooloose/syntastic'

" バッファ内を実行する
NeoBundle 'thinca/vim-quickrun'

" HTMLを楽に入力
NeoBundle 'mattn/emmet-vim'
source ~/.vim-settings.d/emmet-setting.vim

" Python のインデントを修正
NeoBundle 'andviro/flake8-vim'

" Scala 対応
NeoBundle 'derekwyatt/vim-scala'
" play framework に対応
NeoBundle 'gre/play2vim'
" HTML5に対応
NeoBundle 'othree/html5.vim'

" エラー箇所を画面上でハイライト表示
NeoBundle 'vim-scripts/errormarker.vim'

" タグジャンプ
NeoBundle 'szw/vim-tags'

" メソッドの一覧を表示
NeoBundle 'majutsushi/tagbar'

" ファイルをツリー表示
NeoBundle 'scrooloose/nerdtree'


call neobundle#end()

filetype plugin indent on " Required!

syntax enable

" Brief help
" :NeoBundleList - list configured bundles
" :NeoBundleInstall(!) - install(update) bundles
" :NeoBundleClean(!) - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

set fileencodings=ucs-bom,utf-8,iso-2022-jp,cp932,sjis,euc-jp,cp20932

set noswapfile " スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)

set hidden " 保存されていないファイルがあるときでも別のファイルを開けるようにする

set number " 行番号を表示する
highlight LineNr ctermfg=darkyellow " 行番号の色

set smarttab " 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set showmatch " 対応する括弧やブレースを表示する
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set tabstop=2 " タブ文字の表示幅
set shiftwidth=2 " Vimが挿入するインデントの幅
set expandtab " タブ入力を複数の空白入力に置き換える

set shellslash " (Windows向け)パス区切りをスラッシュに

set autochdir " 開いているファイルのあるディレクトリをカレントディレクトリにする

" ベルを鳴らさない
set visualbell
set noerrorbells

" direnv でカレントディレクトリの .vimrc を読み込み
" 対象ディレクトリの .envrc に 'add_extra_vimrc' を追加で動作
if exists("$EXTRA_VIM")
  for path in split($EXTRA_VIM, ':')
    exec "source ".path
  endfor
endif

unlet g:vimrc_processing
endif
