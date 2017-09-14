#!/bin/bash
cd; # start at user home directory

# install nvm - as current user
# if running as root should repeat this as developer/service user
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
bash install_nvm.sh

source ~/.profile
nvm ls-remote
nvm install 6.10.3
nvm use 6.10.3
nvm alias default 6.10.3
nvm use default
