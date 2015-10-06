#!/bin/sh
########################################################################
#
# Description : Firmware Script
#
# Authors     : Based on Open Suse Udev Rules
#               kay.sievers@suse.de
#
# Adapted to  : Jim Gifford
# LFS
#
# Version     : 00.00
#
# Notes       :
#
########################################################################

FIRMWARE_DIRS="/lib/firmware"

if [ ! -e /sys/$DEVPATH/loading ]; then
    exit 0
fi

for DIR in $FIRMWARE_DIRS; do
    [ -e "$DIR/$FIRMWARE" ] || continue
    echo 1 > /sys/$DEVPATH/loading
    cat "$DIR/$FIRMWARE" > /sys/$DEVPATH/data
    echo 0 > /sys/$DEVPATH/loading
    exit
done

echo -1 > /sys/$DEVPATH/loading
exit 1
