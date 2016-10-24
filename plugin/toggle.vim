command! -nargs=0 TogglePaste                    call toggle#Paste()
command! -nargs=0 ToggleHighLightSearch          call toggle#HighLightSearch()
command! -nargs=0 ToggleHightlightChinese        call toggle#HightlightChinese()
command! -nargs=0 ToggleSpellCheck               call toggle#SpellCheck()
command! -nargs=0 ToggleNumberPreced             call toggle#NumberPreced()
command! -nargs=0 ToggleFDC                      call toggle#FDC()

" paste: switch indent mode
nnoremap <silent> <C-F8> :TogglePaste<CR>
inoremap <silent> <C-F8> <C-O>:TogglePaste<CR>

"" use <F3> to toggle High-Lighting-Search setting
"nnoremap <F3> :set hls!<CR>
"inoremap <F3> <C-O>:set hls!<CR>
nnoremap <silent> <F3> :ToggleHighLightSearch<CR>
inoremap <silent> <F3> <C-O>:ToggleHighLightSearch<CR>

" 高亮中文字符
" NOTE: 2011-09-29
nnoremap <silent> <C-F3> :ToggleHightlightChinese<CR>
inoremap <silent> <C-F3> <C-o>:ToggleHightlightChinese<CR>

" Toggle spell check
" For VIM7 and above
nnoremap <silent> <C-F11> :ToggleSpellCheck<CR>
inoremap <silent> <C-F11> <C-O>:ToggleSpellCheck<CR>

" Toggle line number
nnoremap <silent> <C-F12> :ToggleNumberPreced<CR>
inoremap <silent> <C-F12> <C-O>:ToggleNumberPreced<CR>

let g:foldcolumn_default = 3
" Toggle foldcolumn number
nnoremap <silent> <F12> :ToggleFDC<CR>
inoremap <silent> <F12> <C-o>:ToggleFDC<CR>
