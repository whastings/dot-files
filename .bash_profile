DOTFILES=$HOME/workspace/dot-files
source $DOTFILES/colors.sh
source $DOTFILES/aliases.sh
source $DOTFILES/prompt.sh
source $DOTFILES/environment.sh

# Use SSH key with password from keychain in OSX 12.0 Monterey
# https://apple.stackexchange.com/a/433667
ssh-add --apple-use-keychain ~/.ssh/id_rsa &> /dev/null
