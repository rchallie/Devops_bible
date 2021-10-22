#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export TERM=xterm-256color
export LANG="en_FR.utf8"

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
alias kg='kubectl get' 
alias kgp='kubectl get pods'
alias wkgp='watch kubectl get pods'
alias kgs='kubectl get secrets'
alias kgss='kubectl get services'
alias kgi='kubectl get ing'
alias kgn='kubectl get nodes'
alias kgns='kubectl get ns'
alias kgd='kubectl get deploy'
alias kl='kubectl logs'
alias kdp='kubectl describe pods'
alias kdd='kubectl describe deploy'
alias kdn='kubectl describe ns'
alias kds='kubectl describe secrets'

# `vi` to `vim`
alias vi='vim'

# Need kube_ps1
# https://github.com/jonmosco/kube-ps1 
source '/opt/kube-ps1/kube-ps1.sh'
PS1='[\u@\h \W] $(kube_ps1):\nc[_] > '

