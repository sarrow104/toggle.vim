" paste: switch indent mode
nnoremap <silent> <C-F8> :call toggle#Paste()<CR>
inoremap <silent> <C-F8> <C-O>:call toggle#Paste()<CR>

"" use <F3> to toggle High-Lighting-Search setting
"nnoremap <F3> :set hls!<CR>
"inoremap <F3> <C-O>:set hls!<CR>
nnoremap <silent> <F3> :call toggle#HighLightSearch()<CR>
inoremap <silent> <F3> <C-O>:call toggle#HighLightSearch()<CR>

" 高亮中文字符
" NOTE: 2011-09-29
nnoremap <silent> <C-F3> :call toggle#HightlightChinese()<CR>
inoremap <silent> <C-F3> <C-o>:call toggle#HightlightChinese()<CR>

" Toggle spell check
" For VIM7 and above
nnoremap <silent> <C-F11> :call toggle#SpellCheck()<CR>
inoremap <silent> <C-F11> <C-O>:call toggle#SpellCheck()<CR>

" Toggle line number
nnoremap <silent> <C-F12> :call toggle#NumberPreced()<CR>
inoremap <silent> <C-F12> <C-O>:call toggle#NumberPreced()<CR>

let g:foldcolumn_default = 3
" Toggle foldcolumn number
nnoremap <silent> <F12> :call toggle#FDC()<CR>
inoremap <silent> <F12> <C-o>:call toggle#FDC()<CR>
