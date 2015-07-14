# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background and the font Inconsolata.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
#
# http://ysmood.org/wp/2013/03/my-ys-terminal-theme/
# Mar 2013 ys

# Machine name.
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}± %{$reset_color%}%{$fg[green]%}|"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗%{$reset_color%}%{$fg[green]%}| "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✓|%{$reset_color%} "

# Prompt format: \n # USER in DIRECTORY on git:BRANCH STATE \n $
PROMPT="
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%{$fg[cyan]%}%n%{$reset_color%}% \
%{$fg_bold[grey]%} @%{$fg_bold[grey]%}%M%{$reset_color%}% \
%{$fg[white]%} in \
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%} ${git_info}
%{$fg[green]%}→ %{$reset_color%}"
