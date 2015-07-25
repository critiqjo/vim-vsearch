" from http://got-ravings.blogspot.in/2008/07/vim-pr0n-visual-search-mappings.html
" and  http://vim.wikia.com/wiki/VimTip171

function! s:VSetSearch(cmd)
  let old_reg=getreg('"')
  let old_regtype=getregtype('"')
  normal! gvy
  let @/ = substitute(escape(@@, a:cmd.'\.*$^~['), '\_s\+', '\\_s\\+', 'g')
  call setreg('"', old_reg, old_regtype)
endfunction

xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>gV//<CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>gV??<CR>
