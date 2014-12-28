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

# Load custom config files.
for file in ~/dot-files/{colors,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Sources:
if [ -f ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
  nvm alias default 0.10 > /dev/null
  export NODE_PATH=$(npm root -g):$NODE_PATH
fi
if [ -d ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# Load shell-specific config.
if [ -n "$BASH" ]; then
  source ~/dot-files/bashrc
fi
if [ -n "$ZSH_NAME" ]; then
  source ~/dot-files/zshrc
fi

# Load ENV variable definitions and overrides.
source ~/dot-files/exports

# Make certain keyboard shortcuts available.
stty -ixon

# Enter tmux if it's available.
if [ -z "$TMUX" ]
then
  ~/dot-files/scripts/enter-default-tmux
fi
