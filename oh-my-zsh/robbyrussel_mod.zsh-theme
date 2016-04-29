local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)%{$reset_color%}"

# Prev. command status | git | current folter
PROMPT='${ret_status}%{$fg[green]%}%p %{$FG[027]%}$(git_prompt_info)%{$FG[027]%} % %{$fg[cyan]%}%c %{$reset_color%}'

# HH:mm:ss
RPROMPT=' %{$FG[241]%}%D{%H:%M:%S}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[027]%}) %{$FG[226]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[027]%})"
