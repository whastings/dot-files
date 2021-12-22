if [ ! -f $DOTFILES/vendor/git-prompt.sh ]; then
  mkdir -p $DOTFILES/vendor
  curl -o $DOTFILES/vendor/git-prompt.sh \
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

source $DOTFILES/vendor/git-prompt.sh

function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}

PS1="$GREEN\w $LIGHT_BLUE\$(__git_ps1 \"(%s\$(parse_git_dirty)) \")$GREEN$ $NO_COLOR"
