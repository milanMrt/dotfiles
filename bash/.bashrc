#
# ~/.bashrc
#

[[ $- != *i* ]] && return

stty -ixon
shopt -s autocd
alias tsm="transmission-remote"

if [ "$TERM" != "linux" ]
then
	bind -f ~/.local/share/bash/vi-mode
fi

source ~/.local/share/bash/git-prompt.sh
PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"

export GPG_TTY=$(tty)
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
