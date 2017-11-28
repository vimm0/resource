#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# >>> BEGIN ADDED BY CNCHI INSTALLER
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano
# <<< END ADDED BY CNCHI INSTALLER

#Git
# export PS1="\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ "
PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \w\[\033[0;32m\] - [$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[0;32m\]]\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\]\[\033[0m\] '
alias gs='git status'
alias gp='git push'
alias gph='git push; git push heroku master'
alias gd='git diff'
alias gds='git diff --staged'
alias ga='git add'
alias gc='git commit -m'
alias gl="git log --pretty=format:'%C(yellow)%h %C(white bold)%ad %Cgreen%d %Creset%s %C(dim red)%an' --date=short --graph"


# Alias
cs() { cd "$1" && ls; }
alias ..="cd .."
alias ...="cd ../.."
# view ports
alias ports='netstat -tulanp'
#make a dir and cd into it
mcd(){
    mkdir -pv "$@"
    cd "$@"
}
# list files
alias l='ls --color=auto'
alias la='ls -la'
# grep command
function grp { grep -rnIi "$1" . --color; }
# History
export HISTTIMEFORMAT="%d/%m/%y %T "
# Temporary Python Virtual Environment

SRC_DIRECTORY="$HOME/envs"
OFFICE_DIRECTORY="$HOME/office"
venv () {
    source $SRC_DIRECTORY/$1/bin/activate;
	cd $OFFICE_DIRECTORY/$1;
    }

deact(){
	deactivate
	cd ~
}


# Django Aliases
alias d='django-admin.py'
alias dsa='django-admin.py startapp'
alias dsp='django-admin.py startproject'
alias runserver='python manage.py runserver'
alias makemigrations='python manage.py makemigrations'
alias migrate='python manage.py migrate'

# python
