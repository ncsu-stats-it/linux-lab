# autoload -U promptinit && promptinit 
# prompt -l (list available prompts)
# prompt  fade red
autoload -U colors && colors  
# PS1="${RED}\u@\h:${BLUE}\W $ ${PLAIN}"
# PROMPT="%{$fg[red]%}$USER@%m:%{$reset_color%}%{$fg[blue]%}%~ $ %{$reset_color%}"
# PROMPT=%m%#
# PROMPT="%{$fg_bold[green]%}$USER@%m:%{$reset_color%}%{$fg_bold[blue]%}%~ $ %{$reset_color%}"
PROMPT="%{$fg[red]%}$USER@%m:%{$reset_color%}%{$fg[blue]%}%~ $ %{$reset_color%}"

###############################################
# HISTORY Configuration
###############################################
HISTSIZE=1000
HISTFILE=~/.zsh_history
HISTFILESIZE=2000
SAVEHIST=5000
setopt  appendhistory

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
# shopt -s checkwinsize

## Modified to Follow Default Ubuntu .zshrc
umask 002

if [ -f ~/.zsh_aliases ]; then
   . ~/.zsh_aliases
fi

## SUDO User
if [ "$SUDO_USER" ] || [ "$USER" = "root" ]; then
        USER="root"
        PROMPT="%{$fg[red]%}$USER@%m:%{$reset_color%}%{$fg[blue]%}%~ # %{$reset_color%}"
fi

## Append /usr/local if not there.
LOCALCHK=`echo $PATH|grep local`
if [ ! "$LOCALCHK" ]; then
   PATH=$PATH:/usr/local/bin:/usr/local/sbin
fi

