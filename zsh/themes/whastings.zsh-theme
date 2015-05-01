if [ "$PROMPT_NO_GIT" == "true" ]; then
  PROMPT='%{$FG[118]%}%3~%B$%b%{$reset_color%} '
else
  PROMPT='%{$FG[118]%}%3~%B$(git_prompt_info)$%b%{$reset_color%} '
fi

ZSH_THEME_GIT_PROMPT_PREFIX=" ("
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗)"
ZSH_THEME_GIT_PROMPT_CLEAN=")"
