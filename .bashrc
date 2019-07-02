#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export LC_CTYPE=en_US
if [ "$TERM" != "xterm" ]; then
	export TERM=xterm-256color
fi
