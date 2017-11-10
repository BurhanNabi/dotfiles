#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

BROWSER=/usr/bin/chromium
EDITOR=vim

alias kt='killall Telegram'

# Powerline root
PL_ROOT=/usr/lib/python3.6/site-packages
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. $PL_ROOT/powerline/bindings/bash/powerline.sh



alias lls='ls -lh'
alias vimit='vim ~/.bashrc'
alias srcit='source ~/.bashrc'
alias ..='cd ..'
alias ...='cd ../..'
alias subl='/home/bnabi/Downloads/sublime/sublime_text'
alias matlab='/home/bnabi/MATLAB/2017a/bin/matlab'
alias top='htop'
alias cdd='cd ~/Desktop'



#For python virtual environments
alias activate2.7='source ~/my_py2.7/bin/activate'
alias deactivate2.7='deactivate'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
source ~/.profile

########## TMUX ###############
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

if [[ -z "$TMUX" ]] ;then
    ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux new-session
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi


# To switch caps and esc keys
#setxkbmap -option caps:swapescape  

# To map caps to esc on press and ctrl on hold
#setxkbmap -option ctrl:nocaps
#xcape -e 'Control_L=Escape' -t 300

function capsModify {
    setxkbmap -option ctrl:nocaps
    xcape -e 'Control_L=Escape' -t 300
    printf "Caps key modified\n"
}

# Display a random linux command tip 
files=(/home/bnabi/Desktop/container/shell-scripting/bash/*.sh)
to_show="${files[RANDOM % ${#files[@]}]}"
highlight -O ansi $to_show

alias dog='highlight -O ansi'


#Add HOME and UP to CDPATH
#CDPATH=CDPATH:$HOME:..
export CDPATH

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

