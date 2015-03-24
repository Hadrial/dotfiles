#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="nano" 
# My Aliases. Awh yes


alias sano='sudo nano'

alias ls='ls --color=auto'
alias please='sudo $(history -p !!)'


#PS1='[\u@\h \W]\$ '

if [[ ${EUID} == 0 ]] ; then
sq_color="\[\033[0;31m\]"
else		
sq_color="\[\033[0;34m\]"
fi
PS1="$sq_color\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[01;37m\]\342\234\227$sq_color]\342\224\200\")[\[\033[01;37m\]\@$sq_color]\342\224\200[\[\033[01;37m\]\h$sq_color]-[\W$sq_color]\n\342\224\224\342\224\200\342\224\200>> \[\033[01;37m\]$sq_color\[\033[01;37m\]\\[\\033[0m\\]"
	unset sq_color
