#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

	# Transparency Set.
p="$(cat /proc/$PPID/comm)"
if [[ $p = "st" ]]; then
	transset-df "0.70" --id "$WINDOWID" > /dev/null
	PS1='\e[1;35m[\u]\e[1;32m[\$]\e[0m\e[1;31m[\w]\e[0m\n >> '
fi

	# Exports
export HISTCONTROL=erasedups:ignoredups
export EDITOR=vim

	# Native Aliai
alias ls='ls --color=always'
alias grep='grep --color=always'

	# System Aliai
alias cp='cp -i'
alias disk='du -S | sort -n -r | less'
alias ll='ls -laF'
alias mktar='tar -czvf'
alias mv='mv -i'
alias p='ps aux | grep'
alias poweroff='sudo poweroff'
alias reboot='sudo reboot -n'
alias rm='rm -iv'
alias untar='tar -xzvf'

	# Pacman Aliai
alias lQ='pacman -Qs'
alias rQ='pacman -Ss'
alias install='sudo pacman -S'
alias uninstall='sudo pacman -Rs' 
alias upgrade='sudo pacman -Syu'
alias clean='sudo pacman -Scc'
alias orphan='sudo pacman -Rns $(pacman -Qdtq)'

	# Permissions Aliai
alias px='chmod +x'
alias mx='chmod -x'
alias 000='chmod 000'
alias 755='chmod 755'

	# Misc Aliai
alias a='alias'
alias b='btop'
alias gwe='sudo gwe'
alias greph='history | grep'
alias r='ranger'
alias sr='sudo ranger'
alias bashedit='vim ~/.bashrc'
alias dwmedit='vim ~/.config/dwm/config.h'
alias dmenuedit='vim ~/.config/dmenu/config.h'
alias stedit='vim ~/.config/st/config.h'
alias web='cd /var/www/html'
alias svim='sudo vim'
alias scrot='scrot -s -q 100'
alias thumb='scrot -t -q 100'
alias xedit='vim ~/.xinitrc'
