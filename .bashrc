# /etc/skel/.bashrc

if [[ $- != *i* ]] ; then
	return
fi

# Shell colors
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# bin
alias v="nvim"
alias neofetch="clear;neofetch"
alias brb="sudo grub-mkconfig -o /boot/grub/grub.cfg"

alias nano="code"

# exa
alias ls='exa --color=always --group-directories-first --icons'       # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'    # all files and dirs
alias ll='exa -bl --color=always --group-directories-first --icons'   # long format
alias lla='exa -abl --color=always --group-directories-first --icons' # all files and dirs in long format
alias lt='exa -aT --color=always --group-directories-first --icons'   # tree listing
alias l.="exa -a | grep -e '^\.'"                                     # show only dotfiles

# batcat
# alias cat='batcat --style=changes,header,rule,numbers,snip'

#fd
alias df='duf'
alias find='fdfind'

# postmarket
alias "pmbootstrap=~/code/pmbootstrap/pmbootstrap.py"


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
