#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt=get install -y libpq-dev libssl-dev build-essential virtualbox-guest-dkms
apt-get install -y python3 nginx postgresql postgresql-contrib vim git

# install nvm - as current user
# if running as root should repeat this as developer/service user
# curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
# bash install_nvm.sh
