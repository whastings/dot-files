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