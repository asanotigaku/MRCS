#!/bin/sh

raspi-config nonint do_change_timezone "Asia/Tokyo"
raspi-config nonint do_ssh 0
raspi-config nonint do_update
./install.sh
