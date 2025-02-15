######################################################################
#
#
#           ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
#           ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
#           ██████╔╝███████║███████╗███████║██████╔╝██║     
#           ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║     
#           ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
#           ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
#
######################################################################

################################################################################
#     _____          _                  
#    / ____|        | |                 
#   | |    _   _ ___| |_ ___  _ __ ___  
#   | |   | | | / __| __/ _ \| '_ ` _ \ 
#   | |___| |_| \__ \ || (_) | | | | | |
#    \_____\__,_|___/\__\___/|_| |_| |_|
#                                       
################################################################################                                       



stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.

set -o vi
export EDITOR='vi'
export VISUAL='vi'

HISTSIZE= HISTFILESIZE= # Infinite history.

export PS1="\[$(tput bold)\]\[$(tput setaf 3)\]\w \[$(tput setaf 1)\]> \[$(tput sgr0)\]"

# [ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
# [ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# eval $(dircolors -b $HOME/.dircolors)
# alias ls='ls --color'
# LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'

export LS_COLORS

# ignore duplicates 
# HISTCONTROL=ignoredups

# aliases because convenient
alias c='clear'
alias t='tree'
alias e='exit'
alias h='history'
alias nv='nvim'
alias r='ranger'
alias n='neofetch -- ascii_bold on --ascii ~/tools/ascii.txt --ascii_colors 0 1 2 3 4 5 6 7 8 9'
alias ly='lynx -cookies -book'
alias sus='systemctl'

# neofetch -- ascii_bold on --ascii ~/tools/ascii.txt --ascii_colors 0 1 2 3 4 5 6 7 8 9
