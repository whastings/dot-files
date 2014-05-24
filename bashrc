# Load Git autocompletion script if it's available.
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Load prompt customization.
[ -f ~/dot-files/bash_prompt ] && source ~/dot-files/bash_prompt

# Set shell options.
shopt -s cdspell # Autocorrect typos in path names when using `cd`

# If possible, add tab completion for many more commands.
[ -f /etc/bash_completion ] && source /etc/bash_completion
