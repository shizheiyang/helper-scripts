#!/bin/bash

# Author: shizheiyang
# URL: https://github.com/shizheiyang

xinput --list 'SynPS/2 Synaptics TouchPad' 'Device Enabled' | grep -q "This device is disabled"
RETVAL=$?

if [ $RETVAL -eq 0 ]; then
    xinput --set-prop 'SynPS/2 Synaptics TouchPad' 'Device Enabled' 1
else
    xinput --set-prop 'SynPS/2 Synaptics TouchPad' 'Device Enabled' 0
fi
