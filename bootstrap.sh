#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt-get install -y python nginx postgresql postgresql-contrib vim git libpq-dev libssl-dev build-essential virtualbox-guest-dkms

# install nvm - as current user
# if running as root should repeat this as developer/service user
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
bash install_nvm.sh


# uncomment the following to install and start mongodb
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
# echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
# sudo apt-get update -y
# sudo apt-get install -y mongodb-org

# touch /lib/systemd/system/mongod.service

# echo '[Unit]' >> /lib/systemd/system/mongod.service
# echo 'Description=High-performance, schema-free document-oriented database' >> /lib/systemd/system/mongod.service
# echo 'After=network.target' >> /lib/systemd/system/mongod.service
# echo 'Documentation=https://docs.mongodb.org/manual' >> /lib/systemd/system/mongod.service
# echo '' >> /lib/systemd/system/mongod.service
# echo '[Service]' >> /lib/systemd/system/mongod.service
# echo 'User=mongodb' >> /lib/systemd/system/mongod.service
# echo 'Group=mongodb' >> /lib/systemd/system/mongod.service
# echo 'ExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf' >> /lib/systemd/system/mongod.service
# echo '' >> /lib/systemd/system/mongod.service
# echo '[Install]' >> /lib/systemd/system/mongod.service
# echo 'WantedBy=multi-user.target' >> /lib/systemd/system/mongod.service

# sudo service mongod start

if [ ! -d /srv/apps ]; then
  mkdir /srv/apps
  chmod 775 /srv/apps -R
fi
if [ ! -d /srv/www ]; then
  mkdir /srv/www
  chmod 775 /srv/www -R
fi
if [ ! -d /mnt/datafiles ]; then
  mkdir /mnt/datafiles
  chmod 775 /mnt/datafiles -R
fi
groupadd www-data
usermod -a -G www-data ubuntu
