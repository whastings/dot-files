###################################
# To use, put following in ~/.bashrc:
#	# Include my custom dot files
#	if [ -f ~/dot-files/bash_profile ]; then
#    		. ~/dot-files/bash_profile
#	fi
#
# Inspirations:
#	https://github.com/paulirish/dotfiles
###################################

# Load all other config files.
for file in ~/dot-files/{colors,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Make certain keyboard shortcuts available.
stty -ixon

# Load Git autocompletion script if it's available.
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Set shell options.
shopt -s cdspell # Autocorrect typos in path names when using `cd`

# Sources:
# If possible, add tab completion for many more commands.
[ -f /etc/bash_completion ] && source /etc/bash_completion
if [ -f ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
  nvm alias default 0.10 > /dev/null
fi
