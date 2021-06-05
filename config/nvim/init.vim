set number                         "行番号表示
set smartindent                    "改行時に自動でインデントする
set tabstop=4                      "タブを何文字分の空白に変換するか
set shiftwidth=4                   "自動インデント時に入力する空白の数
set expandtab                      "タブ入力を空白に変換
set splitright                     "画面を縦分割する場合、右に開く
set clipboard+=unnamed,unnamedplus "コピー
set hls                            "検索した文字のハイライト
set fileencodings=utf-8,cp932      "ファイルのエンコード
set wildmode=longest,full          "補完指定
set ambiwidth=double               "全角文字を２文字分として扱う
set noswapfile                     "swapファイルを作成しない
set list                           "空白文字の可視化
set listchars=tab:>-,trail:*       "空白文字を可視化する際の文字
set visualbell                     "画面フラッシュ
set ignorecase                     "大文字小文字の区別なく検索する
set smartcase                      "検索単語に大文字が含まれる場合、区別する
set wrapscan                       "最下行まで行ったら1行目から検索

nnoremap j gj
nnoremap k gk
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" insertモード時制御
inoremap <silent><C-q> <Esc>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

let g:python3_host_prog = '/usr/bin/python3'
if &compatible
  set nocompatible
endif

" Required:
let s:dein_dir = $HOME . '/.config/nvim/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath+=' . s:dein_repo_dir
endif

if dein#load_state(s:dein_dir)
    let g:dein#cache_directory = $HOME . '/.cache/dein'
    call dein#begin(s:dein_dir)

    " plugins
    let s:toml_dir  = s:dein_dir . '/toml'
    let s:toml      = s:toml_dir . '/dein.toml'
    let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

    call dein#load_toml(s:toml,      {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
