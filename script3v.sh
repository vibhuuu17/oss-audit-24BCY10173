#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Vaibhavi Ugam Shet Govekar

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "--------------------------------"
echo "Checking VLC configuration directory"

VLC_CONF="/etc/vlc"

if [ -d "$VLC_CONF" ]; then
    CONF_PERMS=$(ls -ld $VLC_CONF | awk '{print $1, $3, $4}')
    echo "VLC config directory found"
    echo "$VLC_CONF => Permissions: $CONF_PERMS"
else
    echo "VLC config directory not found"
fi