" after/plugin/my_tabular_commands.vim
" Provides extra :Tabularize commands

if !exists(':Tabularize')
    finish " Give up here; the Tabular plugin musn't have been loaded
endif

" Make line wrapping possible by resetting the 'cpo' option, first saving it
let s:save_cpo = &cpo
set cpo&vim

AddTabularPattern! asterisk /*/l1

AddTabularPipeline multiple_spaces / \{2,}/
    \ map(a:lines, "substitute(v:val, ' \{2,}', '  ', 'g')")
    \   | tabular#TabularizeStrings(a:lines, '  ', 'l0')


AddTabularPipeline! remove_leading_spaces /^ /
            \ map(a:lines, "substitute(v:val, '^ *', '', '')")

" Restore the saved value of 'cpo'
let &cpo = s:save_cpo
unlet s:save_cpo
