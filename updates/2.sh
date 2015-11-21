#!/usr/bin/env bash

source ~/.nvm/nvm.sh
source ~/dot-files/config/install_vars
nvm install $NODE_VERSION
npm install -g $NODE_GLOBAL_MODULES
