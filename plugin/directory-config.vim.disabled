" -- runtimepath --
set runtimepath^=$DOT_PATH/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$DOT_PATH/vim/after
set runtimepath+=$HOME/.local/bin

set packpath^=$XDG_DATA_HOME/vim
set packpath+=$DOT_PATH/vim
set packpath+=$DOT_PATH/vim/after
set packpath+=$XDG_DATA_HOME/vim/after

set backupdir=$XDG_CACHE_HOME/vim/backup 
set directory=$XDG_CACHE_HOME/vim/swap   
set undodir=$XDG_CACHE_HOME/vim/undo     
set viewdir=$XDG_DATA_HOME/vim/view

call mkdir($XDG_DATA_HOME."/vim/spell", 'p')
call mkdir(&backupdir, 'p')
call mkdir(&directory, 'p')
call mkdir(&undodir, 'p')
call mkdir(&viewdir, 'p')

if !has('nvim')
    set viminfofile=$XDG_CACHE_HOME/vim/viminfo
endif
