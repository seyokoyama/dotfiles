set laststatus=2
let g:airline_theme = 'bubblegum'
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
    \ '0': '0 ',
    \ '1': '1 ',
    \ '2': '2 ',
    \ '3': '3 ',
    \ '4': '4 ',
    \ '5': '5 ',
    \ '6': '6 ',
    \ '7': '7 ',
    \ '8': '8 ',
    \ '9': '9 ',
    \}

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" 左側に使用されるセパレータ
let g:airline_left_alt_sep = '⮁'

" 右側に使用されるセパレータ
let g:airline_right_alt_sep = '⮃'

let g:airline_symbols.crypt = '🔒'     "暗号化されたファイル
let g:airline_symbols.linenr = '¶'     "行
let g:airline_symbols.maxlinenr = '㏑' "最大行
let g:airline_symbols.branch = '⭠'     "gitブランチ
let g:airline_symbols.paste = 'ρ'      "ペーストモード
let g:airline_symbols.spell = 'Ꞩ'      "スペルチェック
let g:airline_symbols.notexists = '∄'  "gitで管理されていない場合
let g:airline_symbols.whitespace = 'Ξ' "空白の警告(余分な空白など)

nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
nnoremap bq :w\|bd<CR>
