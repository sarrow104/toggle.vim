" some util function for toggling vim status
" NOTE:
" 替代方案——切换，并显示状态
" nmap <leader>p :set paste!<bar>set paste?<CR>
function! toggle#HighLightSearch()
    setlocal hls!
    echo "highlight-search ". (&hls? 'on': 'off')
endfunction

function! toggle#Paste()
    setlocal paste!
    echo "paste ". (&paste? 'on': 'off')
endfunction

function! toggle#SpellCheck()
    setlocal spell!
    echo "spell check ". (&spell? 'on': 'off')
endfunction

function! toggle#NumberPreced()
    setlocal nu!
    echo "number-preced ". (&nu? 'on': 'off')
endfunction

function! s:Get_default_FDC_colunm()
    if !exists('g:foldcolumn_default')
	let g:foldcolumn_default = 3
    endif
    return g:foldcolumn_default
endfunction

function! toggle#HightlightChinese()
    if !exists('b:highlight_chinese')
	let b:highlight_chinese = matchadd('Search', '[^\x00-\xff]')
	echo "hilight_chinese on"
    else
	call matchdelete(b:highlight_chinese)
	unlet b:highlight_chinese
	echo "hilight_chinese off"
    end
endfunction

function! toggle#FDC()
    if &fdc
	let b:_foldcolumn_ = &fdc
	setlocal fdc=0
    else
	if &fde == '0'
	    return
	endif
	if exists('b:_foldcolumn_')
	    execute "setlocal fdc=" . b:_foldcolumn_
	else
	    execute "setlocal fdc=" . s:Get_default_FDC_colunm()
	endif
    endif
endfunction
