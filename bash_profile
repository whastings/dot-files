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
for file in ~/dot-files/{bash_prompt,exports,aliases}; do
	[ -r "$file" ] && source "$file"
done
unset file

