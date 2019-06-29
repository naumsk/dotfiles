# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tp/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# key bindings
bindkey "e[1~" beginning-of-line
bindkey "e[4~" end-of-line
bindkey "e[5~" beginning-of-history
bindkey "e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "e[2~" quoted-insert
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey "^H" backward-delete-word
# for rxvt
bindkey "e[8~" end-of-line
bindkey "e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "eOH" beginning-of-line
bindkey "eOF" end-of-line
# for freebsd console
bindkey "e[H" beginning-of-line
bindkey "e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix
PROMPT='[%n@%m:%c]%#'
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
if [ "$TERM" != "xterm" ]; then
	export TERM=xterm-256color
fi
alias cal='cal -m'
alias vi='vim'
alias ls='ls --color'
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS
