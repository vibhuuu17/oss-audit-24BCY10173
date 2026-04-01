#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Vaibhavi Ugam Shet Govekar

PACKAGE="vlc"

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."

    # Show package information
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

echo "--------------------------------"

# Case statement describing the software
case $PACKAGE in
    vlc)
        echo "VLC: a free and open-source multimedia player supporting almost every media format."
        ;;
    apache2)
        echo "Apache: the web server that helped build the modern internet."
        ;;
    mysql-server)
        echo "MySQL: open source database powering millions of web applications."
        ;;
    firefox)
        echo "Firefox: an open-source browser focused on privacy and freedom."
        ;;
    *)
        echo "Unknown package. Open source software supports collaboration and transparency."
        ;;
esac