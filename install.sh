#!/usr/bin/env bash

CONFIG_DIR="$HOME/dot-files"

# Add sourcing of config to ~/.bashrc.
echo "if [ -f ~/dot-files/bash_profile ]; then\n. ~/dot-files/bash_profile\nfi" >> ~/.bashrc

# Symlink home directory files.
ln -s "$CONFIG_DIR/gemrc" ~/.gemrc
ln -s "$CONFIG_DIR/gitconfig" ~/.gitconfig
ln -s "$CONFIG_DIR/inputrc" ~/.inputrc
ln -s "$CONFIG_DIR/pryrc" ~/.pryrc
ln -s "$CONFIG_DIR/rspec" ~/.rspec
ln -s "$CONFIG_DIR/tmux.conf" ~/.tmux.conf

# Download git-completion.bash.
GIT_COMPLETION_URL="http://git.kernel.org/cgit/git/git.git/plain/contrib/completion/git-completion.bash?id=HEAD"
curl -o ~/.git-completion.bash $GIT_COMPLETION_URL
