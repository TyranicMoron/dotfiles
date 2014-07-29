skip_global_compinit=1

case $USER in
	 *felix* | *sim* | *simvideo* )	export REALHOME=/user/mhc ;;
	 * )			export REALHOME=${HOME}
esac

source $REALHOME/.zshenv_ut

export PATH=$REALHOME/.tmuxifier/bin:$PATH
export PATH=$REALHOME/bin:$PATH
export PATH=$REALHOME/.local/bin:$PATH
export PATH=$REALHOME/scripts:$PATH
export PATH=$REALHOME/.dotfiles/ignored/commands:$PATH
typeset -U PATH

export LD_LIBRARY_PATH=$REALHOME/lib:/usr/local/lib:$LD_LIBRARY_PATH
typeset -U LD_LIBRARY_PATH

case $USER in
	*felix* | *sim* | *simvideo* )	export HISTFILE=$REALHOME/.zsh_histories/.zsh_history_$USER ;;
	* )				export HISTFILE=$REALHOME/.zsh_history_$USER
esac

export LANG=en_GB.UTF-8
export LC_CTYPE=en_GB.UTF-8
unset LC_ALL

export DOTFILES=$REALHOME/.dotfiles

export ZSH_CUSTOM=$DOTFILES/ignored/omz-custom

export EDITOR=nano

export DIRCOLORS=$REALHOME/.dircolors

export PYTHONSTARTUP=$REALHOME/.pystartup

source virtualenvwrapper.sh
