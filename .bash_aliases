# Basic aliases
alias c='clear'
alias bashrc='open ~/.bashrc'
alias bash_aliases='open ~/.bash_aliases'

cd () 
{
    builtin cd "$@";
    ls -F;
}
trash ()
{
    for i in $*
    do
        command mv $i $HOME/.local/share/Trash
    done
}

# Basic ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Application aliases
alias spyder='setsid nohup conda run spyder > /dev/null 2> /dev/null'
alias firefox='setsid nohup firefox > /dev/null 2> /dev/null'
alias libre='setsid nohup libreoffice > /dev/null 2> /dev/null'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#Open file with editor aliases
open ()
{
    for i in $*
    do
        setsid nohup xdg-open $i > /dev/null 2> /dev/null
    done
}