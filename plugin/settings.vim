if !exists("g:project_vimrc_file")
  let g:project_vimrc_file = '.project_vimrc'
endif

if !exists("g:project_vimrc_startup")
  let g:project_vimrc_startup = 1
endif

" per project vim settings loader
function SetPerProjectSettings()
  if g:project_vimrc_startup == 0
    exe "so " . $VIM . "/vimrc"
    exe "so " . $MYVIMRC
  endif

  let f = findfile(g:project_vimrc_file, '.;')

  if f != ""
    exe "so " . f
  endif

  let g:project_vimrc_startup = 0
endfunction

au BufEnter * :exe ":call SetPerProjectSettings()"
