#!/bin/bash 

## This is a script file which takes a raw AWS Cloud9 Environment
## and updates all software and loads current ruby and rails
## After this script runs you must manually update the Postgres Database 
## and makes it ready  - SEE Postgresinstall.sh
## then you run buildscript2.sh to finish install  

# make the file runnable 
# $chmod +x buildscript.sh
# to run this type ./buildscript.sh

# update the environment
sudo apt-get update

# Update UBUNTU linux
sudo apt-get update
sudo apt-get upgrade
sudo apt autoremove

# Check Ubuntu version 
lsb_release -a

## See what gems are install in the "global" gemset
# rvm gemset use global

# Upgrade Ruby to lateset... version  Ruby 2.6.6.p146 with this command
rvm install ruby-2.6.6 

# Then set the default version to the new one... with this command
rvm --default use 2.6.6

# Remove the old version of ruby if they update Cloud9 this will break
rvm remove ruby-2.6.3

# Check default and current version of ruby with this command
# rvm list 

# Update all the gems with this command
gem update --system

## Install Node.js or update it .. 
sudo apt-get install nodejs

## This will list what is installed ... 
gem list

## This will list what needs updating ... 
gem outdated 

## UPDATES all gems ... 
# NOTE:overwrite executable for bundler if asked
gem update 

## NEED TO INSTALL Postgresql postgres database on system
# This installs postgresql
sudo apt-get install postgresql postgresql-contrib libpq-dev pgadmin3
# NOTE: hit return to take defaults
