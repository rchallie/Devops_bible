#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

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
home()
{
	cd $HOME
}
