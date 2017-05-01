#!/bin/bash
# update-stage1.sh - Used to update the system
# Stage One

# Script Start
echo "Starting system update.
This will take a while.
You can continue using your node during this process."
sleep 1
# Get new sources
echo "Updating source files for All Star..."
cd /usr/src/utils/
git pull
sleep 0.5
echo "Done"
# Update the system
echo "Updating system software..."
(apt-get update;apt-get dist-upgrade -y)
sleep 0.5
echo "Done"
# Clean the package database
echo "Cleaning up unneeded software..."
(apt-get autoremove --purge -y;apt-get clean;apt-get autoclean)
sleep 0.5
echo "Done"
# Setup for stage two
cd /root
mv .bashrc .bashrc.orig
cat .bashrc.orig > .bashrc
echo "/usr/src/utils/AllStar-build/rpi/update-stage2.sh" >> .bashrc
echo "Rebooting to finish install"
echo "When your node reboots, you need to log in
to finish the update."
sync
sudo reboot
exit 0
