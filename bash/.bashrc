#
# ~/.bashrc
#

[[ $- != *i* ]] && return

stty -ixon
shopt -s autocd

if [ "$TERM" != "linux" ]
then
	bind -f ~/.local/share/bash/vi-mode
fi

source ~/.local/share/bash/git-prompt.sh
PS1='➤ \W$(__git_ps1) '

export GPG_TTY=$(tty)
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
