if !exists("g:project_vimrc_file")
  let g:project_vimrc_file = '.project_vimrc'
endif

" per project vim settings loader
function SetPerProjectSettings()
  exe "so " . $VIM . "/vimrc"
  exe "so " . $MYVIMRC

  let f = findfile(g:project_vimrc_file, '.;')

  if f != ""
    exe "so " . f
  endif
endfunction

au BufEnter * :exe ":call SetPerProjectSettings()"
