"=============================================================================
" File        : nonopaste.vim
" Author      : Kohei Hasegawa <ameutau@gmail.com>
" WebPage     : http://github.com/banyan/nonopaste.vim
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be
"     included in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
"     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
"     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
"     LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
"     OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
"     WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}

if &cp || (exists('g:loaded_nonopaste_vim') && g:loaded_nonopaste_vim)
  finish
endif
let g:loaded_nonopaste_vim = 1

if !executable('curl')
  echohl ErrorMsg | echomsg "Nonopaste: require 'curl' command" | echohl None
  finish
endif

command! -nargs=? -range=% Nonopaste :call
      \ nonopaste#Nonopaste(<count>, <line1>, <line2>, <f-args>)

" __END__
" vim: set et:
" vim: foldmethod=marker
