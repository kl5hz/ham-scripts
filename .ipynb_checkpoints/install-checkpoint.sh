#!/bin/bash
#
# Author  : Anthony Wodoward
# Date    : 1 December 2024
# Updated : 22 November 2024
# Purpose : Main installer for Ham Radio programs

#Check for updates
echo "Checking for update..."

#Install programs
echo "Starting install..."

#Programs to install
sh ./install-js8spotter.sh
sh ./install-wsjtx.sh