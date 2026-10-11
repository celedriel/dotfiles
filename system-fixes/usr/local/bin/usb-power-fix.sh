#!/bin/bash
for f in /sys/bus/usb/devices/*/power/control; do echo on > $f 2>/dev/null; done
for f in /sys/bus/usb/devices/*/power/autosuspend; do echo -1 > $f 2>/dev/null; done
