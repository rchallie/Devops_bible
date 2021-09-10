#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Change keyboard language.
setxkbmap fr

# Goto `Dev` folder.
dev()
{
	# If `Dev` folder doesn't exist create it.
	[ -d ~/Dev ] || mkdir ~/Dev
	cd ~/Dev
}

# Goto `Perso` folder.
perso()
{
	# If `Perso` folder doesn't exist create it.
	[ -d ~/Perso ] || mkdir ~/Perso
	cd ~/Perso
}

# Goto home.
alias home='cd $HOME'

# Kubernetes aliases.
alias kgp='kubectl get pods'
alias kgs='kubectl get secrets'
alias kgi='kubectl get ing'
alias kgn='kubectl get nodes'
alias kgns='kubectl get ns'
