# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# Color mapping
grey='\[\033[1;30m\]'
red='\[\033[0;31m\]'
RED='\[\033[1;31m\]'
green='\[\033[0;32m\]'
GREEN='\[\033[1;32m\]'
yellow='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
purple='\[\033[0;35m\]'
PURPLE='\[\033[1;35m\]'
white='\[\033[0;37m\]'
WHITE='\[\033[1;37m\]'
blue='\[\033[0;34m\]'
BLUE='\[\033[1;34m\]'
cyan='\[\033[0;36m\]'
CYAN='\[\033[1;36m\]'
NC='\[\033[0m\]'

# This line does not include the Good/Bad face (based on the previous command's exit code)
#export PS1="$yellow[$CYAN\t$yellow][$red\H$yellow][$BLUE\w$grey$yellow][$purple\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)$yellow]$NC\n$red\$$NC "

# This line includes the Good/Bad face (based on the previous command's exit code)
# It also is wrapped in ' rather than " because that is the only way I got it to work (should try harder tho)
export PS1='\[\e[0;33m\]`if [ $? = 0 ]; then echo "\[\e[0;32m\](^_^)\[\e[0m\]"; else echo "\[\e[0;31m\](@_@)\[\e[0m\]"; fi`\[\033[0;33m\][\[\e[1;36m\]\t\[\e[0;33m\]][\[\e[0;31m\]\H\[\e[0;33m\]][\[\e[1;34m\]\w\[\e[0;33m\]][\[\e[0;35m\]`git branch 2>/dev/null | grep "^*" | colrm 1 2`\[\e[0;33m\]]\n\[\e[0;31m\]\$\[\e[0m\] '

# Tried to make it work with " so I could use the color definitions above for higher readability, but it did not work :/
#export PS1="$(if [ $? = 0 ]; then echo '\[\e[0;32m\](^_^)\[\e[0m\]'; else echo '\[\e[0;31m\](@_@)\[\e[0m\]'; fi)$yellow[$CYAN\t$yellow][$red\H$yellow][$cyan\w$yellow][$purple$(git branch 2>/dev/null | grep "^*" | colrm 1 2)$yellow]\n$red\$$NC "
