
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[red]%}) "

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local rvm_ruby='%{$fg[red]%}$(rvm_prompt_info || rbenv_prompt_info)%{$reset_color%}'
local git_branch='%{$fg[blue]%}$(git_prompt_info)%{$reset_color%}'

PROMPT='$(battery_pct_prompt)%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{$fg_bold[blue]%}%(!.%1~.%~) %{$fg_bold[magenta]%}$(hg_branch)$(git_prompt_info)%{$fg_bold[blue]%}%#%{$reset_color%} '
#PROMPT="${user_host}:${current_dir} ${rvm_ruby} ${git_branch} %B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%} "
