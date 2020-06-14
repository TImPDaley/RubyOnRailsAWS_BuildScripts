#!/bin/bash
## INSTALL YARN
# First set up debian repo
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# install YARN
sudo apt-get update && sudo apt-get install --no-install-recommends yarn

# Check install version
yarn --version


## INSTALL RAILS latest version 
gem install rails -v 6.0.3.1

# rails 6.0.2.2 
rails -v

# ruby 2.6.6p146
ruby -v

## Install Heroku Tool belt
sudo snap install --classic heroku

## LOGIN TO HEROKU
# ( -i = interactive - does not try to spawn a webbrowser)
heroku login -i 
# enter your email and password for account

## INSTALL C9 Cloud9 environment for opeing files etc
# NOTE: when installed you can type $c9 open file.ext 
# to open a file in window
npm install -g c9


