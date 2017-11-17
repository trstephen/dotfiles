# Change ls -G colors
export CLICOLOR=true
export LSCOLORS=gxfxcxdxbxegedabagacad # see 'man ls' for details

# Guess I still need oh-my-zsh for nice colors? lol.
export ZSH=/Users/tyler/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

GIT_PROMPT_FILE=~/.git-prompt.sh
if [ -f $GIT_PROMPT_FILE ]; then
    source $GIT_PROMPT_FILE
    setopt prompt_subst
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWUNTRACKEDFILES=1
    GIT_PS1_SHOWUPSTREAM="verbose"
    GIT_PS1_SHOWCOLORHINTS=1
    precmd () { __git_ps1 "
%{$FG[241]%}(%D %*) <$?>%{$fg[default]%}" " %{$fg[cyan]%}%~ $program %{$fg[default]%}
%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)%{$reset_color%} " " %s"}
    # ^^^ three args:
    #   1: preceeding git status
    #   2: following git status
    #   3: format for git status %s
    export RPROMPT=""
else
    export PROMPT="
%{$FG[241]%}(%D %*) <$?> %{$fg[cyan]%}%~ $program %{$fg[default]%}
%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)%{$reset_color%} "
    export RPROMPT=""
fi

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
