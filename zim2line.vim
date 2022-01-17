

" https://stackoverflow.com/questions/4976776/how-to-get-path-to-the-current-vimscript-being-executed
" let g:zim2line_file = resolve(expand('<sfile>:p'))
" let g:zim2line_file = fnamemodify(resolve(expand('<sfile>:p')), ':h')
" let g:zim2line_file=expand("<sfile>:p")
let g:zim2line_file = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:zim2toc_file =  g:zim2line_file . "/html2toc"

" https://vi.stackexchange.com/questions/9644/how-to-use-a-variable-in-the-expression-of-a-normal-command

function! AtsZim2Line()
  " echo g:zim2line_file . "/html2toc"
  execute "% ! " .  g:zim2toc_file 

  " return 0

  call AtsProcessPre()
  normal :%s/<p>/<p style="font-size:1.00rem; padding-bottom:1rem;">/g
  normal :%s/<pre>/<pre style="border-radius:0.1rem;background-color:#000000;color:#00FF00;overflow-x:scroll;padding:1rem;">/g
  normal :%s/<h1>/<h1 style="border-bottom:0.00rem none   black; border-radius: 1.0rem; padding:1.00rem; font-size:2.500rem; background-color: burlywood;font-weight:bold; margin: 1rem; box-shadow: 0.5rem 0.5rem black; background-image: linear-gradient(315deg, #FC00FF 0%, #00DBDE 100%);">/g
  normal :%s/<h2>/<h2 style="border-bottom:0.25rem double black; border-radius: 0.2rem; padding:1.00rem; font-size:1.750rem; background-color: #ffdaab;  font-weight:bold; margin-bottom:1rem; ">/g
  normal :%s/<h3>/<h3 style="border-bottom:0.25rem double black; border-radius: 0.2rem; padding:0.50rem; font-size:1.500rem; background-color: #eeeeee;  font-weight:bold; margin-bottom:0.5rem; ">/g
  normal :%s/<h4>/<h4 style="border-bottom:0.10rem dotted black; border-radius: 0.2rem; padding:0.50rem; font-size:1.000rem; background-color: #eeeeee;  font-weight:bold;">/g
  normal :%s/<h5>/<h5 style="border-bottom:0.10rem none   silver;border-radius: 0.2rem; padding:0.25rem; font-size:1.000rem; background-color: #eeeeee;  font-weight:bold;">/g
  normal :%s/<th\>/<th style="background-color:#cccccc;padding:5px;border-bottom:0.1rem double silver;"/g
  normal :%s/<td/<td style="font-size:1.00rem; background-color:#eeeeee;padding:5px; " /g
  normal gg
  normal /<h1\>
  normal kVk0w%k"+y
endfunction

function! AtsCountWord( word )
  redir => cnt
    silent exe '%s/' . a:word . '//n'
  redir END
  return matchstr( cnt, '\d\+' )
endfunction

function! AtsProcessPre()
  let l:c = 0
  let l:total = AtsCountWord( '<pre>' ) 

  normal gg
  normal /\<pre\>
  normal j

  while l:c < l:total
    normal /<pre>
    normal $vit
    normal :s/$/<br\/>/g
    normal  /<\/pre>
    normal j0
    let l:c += 1
  endwhile
endfunction

command! Zim2Line call AtsZim2Line()
" vim: set sw=2 ts=2 et nowrap:
