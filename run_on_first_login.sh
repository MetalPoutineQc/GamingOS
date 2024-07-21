#!/bin/bash

# Check if the configuration file exists
if [ ! -f /opt/GamingOS/.configuration_done ]; then
    # Open a GNOME terminal and run the perms.sh script with sudo
    /usr/bin/gnome-terminal --display=:0 -- sudo /opt/GamingOS/perms.sh

    # Wait for the perms.sh script to complete
    wait

    # Open a GNOME terminal and run the setup.sh script
    /usr/bin/gnome-terminal --display=:0 -- /opt/GamingOS/setup.sh
fi

