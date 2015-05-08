# SHORTCUTS:

git_status() { \print; zle accept-line; gsts; zle accept-line }
zle -N git_status
bindkey '^s' git_status

git_diff() { \print; zle accept-line; git diff; zle accept-line }
zle -N git_diff
bindkey '^f' git_diff

git_diff_cached() { \print; zle accept-line; git diff --cached; zle accept-line }
zle -N git_diff_cached
bindkey '^g' git_diff_cached

git_add() { \print; zle accept-line; ga; zle accept-line }
zle -N git_add
bindkey '^p' git_add

open_bg_process() { fg }
zle -N open_bg_process
bindkey '^o' open_bg_process

# Enable history search via arrow keys.
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
bindkey "^k" up-line-or-beginning-search # Ctrl-k
bindkey "^j" down-line-or-beginning-search # Ctrl-j

# Add back beginning and end of line shortcuts in Vim mode:
bindkey '^a' vi-beginning-of-line
bindkey '^e' vi-end-of-line
