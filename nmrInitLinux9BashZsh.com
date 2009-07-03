#Pipe Setting script for bash or zsh. ver 0.2
#
# NMRPipe System Environment script, Mon Feb 26 15:05:21 /etc/zoneinfo/Japan 2007.
# NMRPipe I/O Optimization.


#------------YOU NEED TO CHANGE----------
#Input Your NMRPipe installed directory like $HOME/SOFTWARE/NMRPipe.
#Example
#PIPE_PATH=$HOME/SOFTWARE/NMRPipe
#PIPE_PATH=/usr/lib/NMRPipe
#vvvvvvvvvvvvCHANGE HEREvvvvvvvvvvvvvvvvvvvv

PIPE_PATH=$HOME/SOFTWARE/NMRPipe

#^^^^^^^^^^^^CHANGE HERE^^^^^^^^^^^^^^^^^^^^

# NMRPipe System Environment script for bash or zsh, 17 April 2009.
# Original script was wrriten in csh.
#  by Nishigaya (yu-nishi at bs dot naist dot jp)
# You can modify it and/or redistribute it as bash or zsh it self. 

MANPATH=$MANPATH":$PIPE_PATH/man:/usr/man:/usr/share/man"
PATH=$PATH":$PIPE_PATH/nmrbin.linux9:$HOME/SOFTWARE/NMRPipe/com"
 
LD_LIBRARY_PATH=$LD_LIBRARY_PATH":$PIPE_PATH/xview/linux/lib:/usr/openwin/lib:$HOME/SOFTWARE/NMRPipe/nmrbin.linux9/lib:/usr/local/lib"

OPENWINHOME=$PIPE_PATH/nmrbin.linux9/openwin 
 
NMRCHECK=ALL
NMRBASE=$PIPE_PATH
NMRTXT=$PIPE_PATH/nmrtxt
NMRBIN=$PIPE_PATH/nmrbin.linux9

TCLPATH=$PIPE_PATH/com
TALOS_DIR=$PIPE_PATH/talos


TCL_LIBRARY=$PIPE_PATH/nmrtxt/tcl8.4
# TCL_LIBRARY=/usr/lib/tcl/tcl8.5
TK_LIBRARY=$PIPE_PATH/nmrtxt/tk8.4
# TK_LIBRARY=/usr/lib/tcl/tk8.5
BLT_LIBRARY=$PIPE_PATH/nmrtxt/blt2.4z
NMRPIPE_TCL_LIB=$PIPE_PATH/nmrtxt/tcl8.4
# NMRPIPE_TCL_LIB=/usr/lib/tcl/tcl8.5
NMRPIPE_TK_LIB=$PIPE_PATH/nmrtxt/tk8.4
# NMRPIPE_TK_LIB=/usr/lib/tcl/tk8.5
NMRPIPE_BLT_LIB=$PIPE_PATH/nmrtxt/blt2.4z


 
export MANPATH PATH LD_LIBRARY_PATH NMRCHEC NMRBASE NMRTXT NMRBIN TCL_LIBRARY TK_LIBRARY BLT_LIBRARY NMRPIPE_TCL_LIB NMRPIPE_TK_LIB NMRPIPE_BLT_LIB TCLPATH TALOS_DIR OPENWINHOME

