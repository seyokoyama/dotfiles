set number                         "行番号表示
set autoindent                     "改行時に自動でインデントする
set tabstop=4                      "タブを何文字分の空白に変換するか
set shiftwidth=4                   "自動インデント時に入力する空白の数
set expandtab                      "タブ入力を空白に変換
set splitright                     "画面を縦分割する場合、右に開く
set clipboard+=unnamed,unnamedplus "コピー
set hls                            "検索した文字のハイライト
set fileencodings=utf-8,cp932      "ファイルのエンコード
set wildmode=longest,full          "補完指定

let g:python_host_prog = '/usr/bin/python3'
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
