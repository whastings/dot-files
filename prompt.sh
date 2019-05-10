source '/Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh'

function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}

PS1="$GREEN\w $LIGHT_BLUE\$(__git_ps1 \"(%s\$(parse_git_dirty)) \")$GREEN$ $NO_COLOR"
