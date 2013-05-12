PROMPT='%{$fg_bold[green]%}%n@%m %{$fg[cyan]%}%2c %{$fg_bold[blue]%}$(git_prompt_info)$(hg_prompt_info)%{$fg_bold[blue]%}$ % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}X%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

ZSH_THEME_HG_PROMPT_PREFIX="hg:(%{$fg[red]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}X%{$reset_color%}"
ZSH_THEME_HG_PROMPT_CLEAN="%{$fg[blue]%})"
