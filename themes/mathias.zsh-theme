# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background and the font Inconsolata.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
#
# http://ysmood.org/wp/2013/03/my-ys-terminal-theme/
# Mar 2013 ys

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# Shell prompt based on the Solarized Dark theme.
# Screenshot: http://i.imgur.com/EkEtphC.png
# Heavily inspired by @necolas’s prompt: https://github.com/necolas/dotfiles
# iTerm → Profiles → Text → use 13pt Monaco with 1.1 vertical spacing.

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM='gnome-256color';
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM='xterm-256color';
fi;

# Terminal colors for prompt
# black="%F{0}";
# darkgrey="%F{8}";
# blue="%F{4}";
# cyan="%F{6}";
# green="%F{2}";
orange="%F{208}";
# purple="%F{4}";
# red="%F{1}";
violet="%F{13}";
# white="%F{15}";
yellow="%F{3}";

# Highlight the user name when logged in as root.
if [[ "${USER}" == "root" ]]; then
	userStyle="${red}";
else
	userStyle="${orange}";
fi;

# Highlight the hostname when connected via SSH.
if [[ "${SSH_TTY}" ]]; then
	hostStyle="${red}";
else
	hostStyle="${yellow}";
fi;

local git_info='$(git_prompt_info)'
local git_status='$(git_prompt_status)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}± %{$violet%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$violet%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}⚑ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[orange]%}▴ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}§ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{52}◒ "
ZSH_THEME_GIT_STATUS_PREFIX="%{$fg[blue]%}[ "
ZSH_THEME_GIT_STATUS_SUFFIX="%{$fg[blue]%}]"

# PROMPT: # username @ hostname in currentFolder ± currentBranch [branchStatus]
PROMPT="
%{$fg[cyan]%}# %{$userStyle%}%n% %{$fg[white]%} @ %{$hostStyle%}%M% %{$fg[white]%} in %{$fg[green]%}%{$current_dir%} %{$git_info%}%{$git_status%}
%{$fg[green]%}→ %{$reset_color%}"
