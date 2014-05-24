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
for file in ~/dot-files/{colors,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Load shell-specific config.
if [ -n "$BASH" ]; then
  source ~/dot-files/bashrc
fi
if [ -n "$ZSH_NAME" ]; then
  source ~/dot-files/zshrc
fi

# Make certain keyboard shortcuts available.
stty -ixon

# Sources:
if [ -f ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
  nvm alias default 0.10 > /dev/null
fi
[ -d ~/.rbenv ] && eval "$(rbenv init -)"

# Enter tmux if it's available.
if [ -z "$TMUX" ]
then
  ~/dot-files/scripts/enter-default-tmux
fi